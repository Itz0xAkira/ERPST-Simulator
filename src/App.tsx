import { useMemo, useState } from 'react'
import './App.css'
import 'primeicons/primeicons.css';
import { SimulationsSelector } from './SimulationsSelector';
import { Simulations } from './simulations';
import { ProgressSpinner } from 'primereact/progressspinner';

function App() {
  const [selectedSimulation, setSelectedSimulation] = useState(0);
  const [selectedSimluationCode, setSelectedSimluationCode] = useState<any>("");
  const [isLoading, setIsLoading] = useState(true)
  const onSimulationSelect = (simulationIndex: number) => {
    console.log("Selected:", simulationIndex)
    setSelectedSimulation(simulationIndex);
  };

  useMemo(() => {
    console.log("Changed Simulation to:", selectedSimulation)
    setIsLoading(true);
    fetch(Simulations[selectedSimulation].path).then(async (res) => {
      const simulationSourceCode = await res.text();
      const encodedCode = encodeURIComponent(simulationSourceCode);
      setSelectedSimluationCode(encodedCode);
    })
  }, [selectedSimulation])


  return (
    <>
      <SimulationsSelector simulationIndex={selectedSimulation} {...{ onSimulationSelect }} />
      {
        isLoading &&
        <div className="fixed inset-0 z-10 bg-[#000000a0] flex justify-center items-center ">
          <ProgressSpinner />
        </div>
      }
      <iframe className='h-[60vh] w-full'
        src={`https://rdrr.io/snippets/embed/?code=${selectedSimluationCode}`}
        onLoad={() => setIsLoading(false)}
      />
    </>
  )
}


export default App
