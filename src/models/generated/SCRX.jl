#=
This file is auto-generated. Do not edit.
=#
"""
    mutable struct SCRX <: AVR
        Ta::Float64
        Tb::Float64
        K::Float64
        Te::Float64
        Efd_lim::Tuple{Float64, Float64}
        switch::Int
        rc_rfd::Float64
        V_ref::Float64
        ext::Dict{String, Any}
        states::Vector{Symbol}
        n_states::Int
        states_types::Vector{StateTypes.StateType}
        internal::InfrastructureSystemsInternal
    end

This exciter is based on an IEEE type SCRX solid state exciter.  The output field voltage is varied by a control system to maintain the system voltage at Vref.  Please note that this exciter model has no initialization capabilities - this means that it will respond to whatever inputs it receives regardless of the state of the machine model.

# Arguments
- `Ta::Float64`: Lead input constant in s, validation range: (0, nothing)
- `Tb::Float64`: Lag input constant, validation range: (0, nothing)
- `K::Float64`: Regulator Gain, validation range: (0, nothing)
- `Te::Float64`: Regulator Time Constant, validation range: (&quot;eps()&quot;, nothing), action if invalid: error
- `Efd_lim::Tuple{Float64, Float64}`: Field Voltage regulator limits (regulator output) (Efd_min, Efd_max)
- `switch::Int`: Switch, validation range: (0, 1), action if invalid: error
- `rc_rfd::Float64`: Field current capability. Set = 0 for negative current capability. Typical value 10, validation range: (0, nothing)
- `V_ref::Float64`: Reference Voltage Set-point, validation range: (0, nothing)
- `ext::Dict{String, Any}`
- `states::Vector{Symbol}`: The states are:
	Vr1: First integrator,
	Vr2: Second integrator
- `n_states::Int`: SCRX has 2 states
- `states_types::Vector{StateTypes.StateType}`: SCRX has 2 differential states
- `internal::InfrastructureSystemsInternal`: power system internal reference, do not modify
"""
mutable struct SCRX <: AVR
    "Lead input constant in s"
    Ta::Float64
    "Lag input constant"
    Tb::Float64
    "Regulator Gain"
    K::Float64
    "Regulator Time Constant"
    Te::Float64
    "Field Voltage regulator limits (regulator output) (Efd_min, Efd_max)"
    Efd_lim::Tuple{Float64, Float64}
    "Switch"
    switch::Int
    "Field current capability. Set = 0 for negative current capability. Typical value 10"
    rc_rfd::Float64
    "Reference Voltage Set-point"
    V_ref::Float64
    ext::Dict{String, Any}
    "The states are:
	Vr1: First integrator,
	Vr2: Second integrator"
    states::Vector{Symbol}
    "SCRX has 2 states"
    n_states::Int
    "SCRX has 2 differential states"
    states_types::Vector{StateTypes.StateType}
    "power system internal reference, do not modify"
    internal::InfrastructureSystemsInternal
end

function SCRX(Ta, Tb, K, Te, Efd_lim, switch, rc_rfd, V_ref=1.0, ext=Dict{String, Any}(), )
    SCRX(Ta, Tb, K, Te, Efd_lim, switch, rc_rfd, V_ref, ext, [:Vr1, :Vr2], 2, [StateTypes.Differential, StateTypes.Differential], InfrastructureSystemsInternal(), )
end

function SCRX(; Ta, Tb, K, Te, Efd_lim, switch, rc_rfd, V_ref=1.0, ext=Dict{String, Any}(), )
    SCRX(Ta, Tb, K, Te, Efd_lim, switch, rc_rfd, V_ref, ext, )
end

# Constructor for demo purposes; non-functional.
function SCRX(::Nothing)
    SCRX(;
        Ta=0,
        Tb=0,
        K=0,
        Te=0,
        Efd_lim=(0.0, 0.0),
        switch=0,
        rc_rfd=0,
        V_ref=0,
        ext=Dict{String, Any}(),
    )
end

"""Get SCRX Ta."""
get_Ta(value::SCRX) = value.Ta
"""Get SCRX Tb."""
get_Tb(value::SCRX) = value.Tb
"""Get SCRX K."""
get_K(value::SCRX) = value.K
"""Get SCRX Te."""
get_Te(value::SCRX) = value.Te
"""Get SCRX Efd_lim."""
get_Efd_lim(value::SCRX) = value.Efd_lim
"""Get SCRX switch."""
get_switch(value::SCRX) = value.switch
"""Get SCRX rc_rfd."""
get_rc_rfd(value::SCRX) = value.rc_rfd
"""Get SCRX V_ref."""
get_V_ref(value::SCRX) = value.V_ref
"""Get SCRX ext."""
get_ext(value::SCRX) = value.ext
"""Get SCRX states."""
get_states(value::SCRX) = value.states
"""Get SCRX n_states."""
get_n_states(value::SCRX) = value.n_states
"""Get SCRX states_types."""
get_states_types(value::SCRX) = value.states_types
"""Get SCRX internal."""
get_internal(value::SCRX) = value.internal

"""Set SCRX Ta."""
set_Ta!(value::SCRX, val::Float64) = value.Ta = val
"""Set SCRX Tb."""
set_Tb!(value::SCRX, val::Float64) = value.Tb = val
"""Set SCRX K."""
set_K!(value::SCRX, val::Float64) = value.K = val
"""Set SCRX Te."""
set_Te!(value::SCRX, val::Float64) = value.Te = val
"""Set SCRX Efd_lim."""
set_Efd_lim!(value::SCRX, val::Tuple{Float64, Float64}) = value.Efd_lim = val
"""Set SCRX switch."""
set_switch!(value::SCRX, val::Int) = value.switch = val
"""Set SCRX rc_rfd."""
set_rc_rfd!(value::SCRX, val::Float64) = value.rc_rfd = val
"""Set SCRX V_ref."""
set_V_ref!(value::SCRX, val::Float64) = value.V_ref = val
"""Set SCRX ext."""
set_ext!(value::SCRX, val::Dict{String, Any}) = value.ext = val
"""Set SCRX states."""
set_states!(value::SCRX, val::Vector{Symbol}) = value.states = val
"""Set SCRX n_states."""
set_n_states!(value::SCRX, val::Int) = value.n_states = val
"""Set SCRX states_types."""
set_states_types!(value::SCRX, val::Vector{StateTypes.StateType}) = value.states_types = val
"""Set SCRX internal."""
set_internal!(value::SCRX, val::InfrastructureSystemsInternal) = value.internal = val
