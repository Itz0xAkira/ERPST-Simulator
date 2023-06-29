import React from 'react'
import { Simulations } from './simulations';
import { Card } from 'primereact/card';
import { Button } from 'primereact/button';

type SimulationSelectorProps = {
    simulationIndex: number;
    onSimulationSelect: (simulationIndex: number) => void;
}

export const SimulationsSelector: React.FC<SimulationSelectorProps> = ({ simulationIndex, onSimulationSelect }) => {
    return (
        <>
            <div className="flex overflow-x-auto w-screen items-start px-5 h-[40vh]">
                {Simulations.map(({ name, icon }, currentSimulationIndex) => {
                    const Header = ({ name, src }: { name: string; src: string; }) => {
                        return (
                            <div className="w-full flex justify-center items-center">
                                <img className='max-w-[80%] rounded-br-2xl rounded-bl-2xl' alt={name} {...{ src }} />
                            </div>
                        )
                    }
                    const Footer = () => {
                        return (
                            <div className="w-full mt-auto self-end ">
                                <Button label="Load" className='w-full rounded-none rounded-tr-xl rounded-tl-xl'
                                    icon="pi pi-play" severity='info' onClick={() => onSimulationSelect(currentSimulationIndex)} />
                                <Button label="View Code" className='w-full rounded-none rounded-br-xl rounded-bl-xl'
                                    icon="pi pi-code" onClick={() => window.open(Simulations[currentSimulationIndex].path, "__blank")} />
                            </div>)
                    }

                    return (<div className="card flex justify-content-center">
                        <Card title={name}
                            header={() => <Header name={name} src={icon} />}
                            footer={<Footer />}
                            className={`w-56 h-[18rem] p-0
                         rounded-2xl shadow-lg text-md flex flex-col justify-between items-center
                         opacity-100 hover:opacity-80 transition-all duration-500 ease-in-out
                         ${simulationIndex === currentSimulationIndex ? "bg-gradient-to-b from-[#fdfcfb] to-[#e2d1c3]" : "bg-gradient-to-br from-[#fdfbfb] to-[#ebedee]"}
                         `}
                        >
                        </Card>
                    </div>)
                })}
            </div>
        </>
    )
}
