#=
This file is auto-generated. Do not edit.
=#
"""
    mutable struct IEEETurbineGov1 <: TurbineGov
        K::Float64
        T1::Float64
        T2::Float64
        T3::Float64
        U0::Float64
        U_c::Float64
        valve_position_limits::NamedTuple{(:min, :max), Tuple{Float64, Float64}}
        T4::Float64
        K1::Float64
        K2::Float64
        T5::Float64
        K3::Float64
        K4::Float64
        T6::Float64
        K5::Float64
        K6::Float64
        T7::Float64
        K7::Float64
        K8::Float64
        P_ref::Float64
        ext::Dict{String, Any}
        states::Vector{Symbol}
        n_states::Int
        internal::InfrastructureSystemsInternal
    end

IEEE Type 1 Speed-Governing Model

# Arguments
- `K::Float64`: Governor Gain, validation range: (0, nothing)
- `T1::Float64`: Input Filter Lag, validation range: (0, nothing)
- `T2::Float64`: Input Filter Lead, validation range: (0, nothing)
- `T3::Float64`: Valve position Time Constant, validation range: (0, nothing)
- `U0::Float64`: Maximum Valve Opening Rate, validation range: (0, nothing)
- `U_c::Float64`: Maximum Valve closing rate, validation range: (nothing, 0.0)
- `valve_position_limits::NamedTuple{(:min, :max), Tuple{Float64, Float64}}`: Valve position limits in MW
- `T4::Float64`: Time Constant inlet steam, validation range: (0, nothing)
- `K1::Float64`: Fraction of high presure shaft power, validation range: (0, nothing)
- `K2::Float64`: Fraction of low presure shaft power, validation range: (0, nothing)
- `T5::Float64`: Time constant for second boiler pass, validation range: (0, nothing)
- `K3::Float64`: Fraction of high presure shaft power second boiler pass, validation range: (0, nothing)
- `K4::Float64`: Fraction of low presure shaft power second boiler pass, validation range: (0, nothing)
- `T6::Float64`: Time constant for third boiler pass, validation range: (0, nothing)
- `K5::Float64`: Fraction of high presure shaft power third boiler pass, validation range: (0, nothing)
- `K6::Float64`: Fraction of low presure shaft power third boiler pass, validation range: (0, nothing)
- `T7::Float64`: Time constant for fourth boiler pass, validation range: (0, nothing)
- `K7::Float64`: Fraction of high presure shaft power fourth boiler pass, validation range: (0, nothing)
- `K8::Float64`: Fraction of low presure shaft power fourth boiler pass, validation range: (0, nothing)
- `P_ref::Float64`: Reference Power Set-point, validation range: (0, nothing)
- `ext::Dict{String, Any}`
- `states::Vector{Symbol}`: The states of the IEEETurbineGov model are:
	x_g1: First Governor integrator,
	x_g2: Governor output,
	x_g3: First Turbine integrator, 
	x_g4: Second Turbine Integrator, 
	x_g5: Third Turbine Integrator, 
	x_g6: Fourth Turbine Integrator, 
- `n_states::Int`: IEEEG1 has 6 states
- `internal::InfrastructureSystemsInternal`: power system internal reference, do not modify
"""
mutable struct IEEETurbineGov1 <: TurbineGov
    "Governor Gain"
    K::Float64
    "Input Filter Lag"
    T1::Float64
    "Input Filter Lead"
    T2::Float64
    "Valve position Time Constant"
    T3::Float64
    "Maximum Valve Opening Rate"
    U0::Float64
    "Maximum Valve closing rate"
    U_c::Float64
    "Valve position limits in MW"
    valve_position_limits::NamedTuple{(:min, :max), Tuple{Float64, Float64}}
    "Time Constant inlet steam"
    T4::Float64
    "Fraction of high presure shaft power"
    K1::Float64
    "Fraction of low presure shaft power"
    K2::Float64
    "Time constant for second boiler pass"
    T5::Float64
    "Fraction of high presure shaft power second boiler pass"
    K3::Float64
    "Fraction of low presure shaft power second boiler pass"
    K4::Float64
    "Time constant for third boiler pass"
    T6::Float64
    "Fraction of high presure shaft power third boiler pass"
    K5::Float64
    "Fraction of low presure shaft power third boiler pass"
    K6::Float64
    "Time constant for fourth boiler pass"
    T7::Float64
    "Fraction of high presure shaft power fourth boiler pass"
    K7::Float64
    "Fraction of low presure shaft power fourth boiler pass"
    K8::Float64
    "Reference Power Set-point"
    P_ref::Float64
    ext::Dict{String, Any}
    "The states of the IEEETurbineGov model are:
	x_g1: First Governor integrator,
	x_g2: Governor output,
	x_g3: First Turbine integrator, 
	x_g4: Second Turbine Integrator, 
	x_g5: Third Turbine Integrator, 
	x_g6: Fourth Turbine Integrator, "
    states::Vector{Symbol}
    "IEEEG1 has 6 states"
    n_states::Int
    "power system internal reference, do not modify"
    internal::InfrastructureSystemsInternal
end

function IEEETurbineGov1(K, T1, T2, T3, U0, U_c, valve_position_limits, T4, K1, K2, T5, K3, K4, T6, K5, K6, T7, K7, K8, P_ref=1.0, ext=Dict{String, Any}(), )
    IEEETurbineGov1(K, T1, T2, T3, U0, U_c, valve_position_limits, T4, K1, K2, T5, K3, K4, T6, K5, K6, T7, K7, K8, P_ref, ext, [:x_g1, :x_g2, :x_g3, :x_g4, :x_g5, :x_g6], 6, InfrastructureSystemsInternal(), )
end

function IEEETurbineGov1(; K, T1, T2, T3, U0, U_c, valve_position_limits, T4, K1, K2, T5, K3, K4, T6, K5, K6, T7, K7, K8, P_ref=1.0, ext=Dict{String, Any}(), )
    IEEETurbineGov1(K, T1, T2, T3, U0, U_c, valve_position_limits, T4, K1, K2, T5, K3, K4, T6, K5, K6, T7, K7, K8, P_ref, ext, )
end

# Constructor for demo purposes; non-functional.
function IEEETurbineGov1(::Nothing)
    IEEETurbineGov1(;
        K=0,
        T1=0,
        T2=0,
        T3=0,
        U0=0,
        U_c=0,
        valve_position_limits=(min=0.0, max=0.0),
        T4=0,
        K1=0,
        K2=0,
        T5=0,
        K3=0,
        K4=0,
        T6=0,
        K5=0,
        K6=0,
        T7=0,
        K7=0,
        K8=0,
        P_ref=0,
        ext=Dict{String, Any}(),
    )
end

"""Get IEEETurbineGov1 K."""
get_K(value::IEEETurbineGov1) = value.K
"""Get IEEETurbineGov1 T1."""
get_T1(value::IEEETurbineGov1) = value.T1
"""Get IEEETurbineGov1 T2."""
get_T2(value::IEEETurbineGov1) = value.T2
"""Get IEEETurbineGov1 T3."""
get_T3(value::IEEETurbineGov1) = value.T3
"""Get IEEETurbineGov1 U0."""
get_U0(value::IEEETurbineGov1) = value.U0
"""Get IEEETurbineGov1 U_c."""
get_U_c(value::IEEETurbineGov1) = value.U_c
"""Get IEEETurbineGov1 valve_position_limits."""
get_valve_position_limits(value::IEEETurbineGov1) = value.valve_position_limits
"""Get IEEETurbineGov1 T4."""
get_T4(value::IEEETurbineGov1) = value.T4
"""Get IEEETurbineGov1 K1."""
get_K1(value::IEEETurbineGov1) = value.K1
"""Get IEEETurbineGov1 K2."""
get_K2(value::IEEETurbineGov1) = value.K2
"""Get IEEETurbineGov1 T5."""
get_T5(value::IEEETurbineGov1) = value.T5
"""Get IEEETurbineGov1 K3."""
get_K3(value::IEEETurbineGov1) = value.K3
"""Get IEEETurbineGov1 K4."""
get_K4(value::IEEETurbineGov1) = value.K4
"""Get IEEETurbineGov1 T6."""
get_T6(value::IEEETurbineGov1) = value.T6
"""Get IEEETurbineGov1 K5."""
get_K5(value::IEEETurbineGov1) = value.K5
"""Get IEEETurbineGov1 K6."""
get_K6(value::IEEETurbineGov1) = value.K6
"""Get IEEETurbineGov1 T7."""
get_T7(value::IEEETurbineGov1) = value.T7
"""Get IEEETurbineGov1 K7."""
get_K7(value::IEEETurbineGov1) = value.K7
"""Get IEEETurbineGov1 K8."""
get_K8(value::IEEETurbineGov1) = value.K8
"""Get IEEETurbineGov1 P_ref."""
get_P_ref(value::IEEETurbineGov1) = value.P_ref
"""Get IEEETurbineGov1 ext."""
get_ext(value::IEEETurbineGov1) = value.ext
"""Get IEEETurbineGov1 states."""
get_states(value::IEEETurbineGov1) = value.states
"""Get IEEETurbineGov1 n_states."""
get_n_states(value::IEEETurbineGov1) = value.n_states
"""Get IEEETurbineGov1 internal."""
get_internal(value::IEEETurbineGov1) = value.internal

"""Set IEEETurbineGov1 K."""
set_K!(value::IEEETurbineGov1, val::Float64) = value.K = val
"""Set IEEETurbineGov1 T1."""
set_T1!(value::IEEETurbineGov1, val::Float64) = value.T1 = val
"""Set IEEETurbineGov1 T2."""
set_T2!(value::IEEETurbineGov1, val::Float64) = value.T2 = val
"""Set IEEETurbineGov1 T3."""
set_T3!(value::IEEETurbineGov1, val::Float64) = value.T3 = val
"""Set IEEETurbineGov1 U0."""
set_U0!(value::IEEETurbineGov1, val::Float64) = value.U0 = val
"""Set IEEETurbineGov1 U_c."""
set_U_c!(value::IEEETurbineGov1, val::Float64) = value.U_c = val
"""Set IEEETurbineGov1 valve_position_limits."""
set_valve_position_limits!(value::IEEETurbineGov1, val::NamedTuple{(:min, :max), Tuple{Float64, Float64}}) = value.valve_position_limits = val
"""Set IEEETurbineGov1 T4."""
set_T4!(value::IEEETurbineGov1, val::Float64) = value.T4 = val
"""Set IEEETurbineGov1 K1."""
set_K1!(value::IEEETurbineGov1, val::Float64) = value.K1 = val
"""Set IEEETurbineGov1 K2."""
set_K2!(value::IEEETurbineGov1, val::Float64) = value.K2 = val
"""Set IEEETurbineGov1 T5."""
set_T5!(value::IEEETurbineGov1, val::Float64) = value.T5 = val
"""Set IEEETurbineGov1 K3."""
set_K3!(value::IEEETurbineGov1, val::Float64) = value.K3 = val
"""Set IEEETurbineGov1 K4."""
set_K4!(value::IEEETurbineGov1, val::Float64) = value.K4 = val
"""Set IEEETurbineGov1 T6."""
set_T6!(value::IEEETurbineGov1, val::Float64) = value.T6 = val
"""Set IEEETurbineGov1 K5."""
set_K5!(value::IEEETurbineGov1, val::Float64) = value.K5 = val
"""Set IEEETurbineGov1 K6."""
set_K6!(value::IEEETurbineGov1, val::Float64) = value.K6 = val
"""Set IEEETurbineGov1 T7."""
set_T7!(value::IEEETurbineGov1, val::Float64) = value.T7 = val
"""Set IEEETurbineGov1 K7."""
set_K7!(value::IEEETurbineGov1, val::Float64) = value.K7 = val
"""Set IEEETurbineGov1 K8."""
set_K8!(value::IEEETurbineGov1, val::Float64) = value.K8 = val
"""Set IEEETurbineGov1 P_ref."""
set_P_ref!(value::IEEETurbineGov1, val::Float64) = value.P_ref = val
"""Set IEEETurbineGov1 ext."""
set_ext!(value::IEEETurbineGov1, val::Dict{String, Any}) = value.ext = val
"""Set IEEETurbineGov1 states."""
set_states!(value::IEEETurbineGov1, val::Vector{Symbol}) = value.states = val
"""Set IEEETurbineGov1 n_states."""
set_n_states!(value::IEEETurbineGov1, val::Int) = value.n_states = val
"""Set IEEETurbineGov1 internal."""
set_internal!(value::IEEETurbineGov1, val::InfrastructureSystemsInternal) = value.internal = val
