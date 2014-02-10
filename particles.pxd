cimport grid
cimport numpy

cdef class Particles:
      
    cdef:
        unsigned int macroParticleCount, nCoords
        double particleMass, particleCharge
        double[:] chargeOnGrid, weightLowXLowY, weightUpXLowY, weightLowXUpY, weightUpXUpY
        double[:,:] particleData, eAtParticles, bAtParticles
        unsigned int[:] inCell
        unsigned short[:] isInside
        
    cpdef object setBAtParticles(Particles self, double[:,:] bAtParticles)
    cpdef object setParticleData(Particles self, double[:,:] particleData)
    cpdef numpy.ndarray getParticleData(Particles self)
    cpdef double[:,:] getFullParticleData(Particles self)
    cpdef unsigned int getNCoords(Particles self)
    cpdef unsigned int getMacroParticleCount(Particles self)
    cpdef object setMacroParticleCount(Particles self, unsigned int macroParticleCount)
    cpdef numpy.ndarray getChargeOnGrid(Particles self)
    cpdef object setChargeOnGrid(Particles self, double[:] chargeOnGrid)
    cpdef double getParticleCharge(Particles self)
    cpdef double getParticleMass(Particles self)
    cpdef unsigned int[:] getInCell(Particles self)
    cpdef unsigned short[:] getFullIsInside(Particles self)
    cpdef numpy.ndarray getIsInside(Particles self)
    cpdef double[:] getWeightLowXUpY(Particles self)
    cpdef double[:] getWeightLowXLowY(Particles self)
    cpdef double[:] getWeightUpXUpY(Particles self)
    cpdef double[:] getWeightUpXLowY(Particles self)
    cpdef double[:,:] getEAtParticles(Particles self)
    cpdef double[:,:] getBAtParticles(Particles self)
    cpdef double getMeanWeight(Particles self)
    cpdef object sortByColumn(Particles self, unsigned int sortByColumn)
    cpdef object calcGridWeights(Particles self, grid.Grid gridObj)
    cpdef object eFieldToParticles(Particles self, grid.Grid gridObj, double[:] eAtGridPoints)
    cpdef object bFieldToParticles(Particles self, grid.Grid gridObj, double[:] bAtGridPoints)
    cpdef object chargeToGrid(Particles self, grid.Grid gridObj)
    cpdef object borisPush(Particles self, double dt, unsigned short typeBField = ?)
    cpdef object addAndRemoveParticles(Particles self, double[:,:] addParticleData, unsigned short[:] keepParticles)
