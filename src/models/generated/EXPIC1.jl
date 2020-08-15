#=
This file is auto-generated. Do not edit.
=#
"""
    mutable struct EXPIC1 <: AVR
        Tr::Float64
        Ka::Float64
        Ta::Float64
        Va_lim::Tuple{Float64, Float64}
        Ta_2::Float64
        Ta_3::Float64
        Ta_4::Float64
        Vr_lim::Tuple{Float64, Float64}
        Kf::Float64
        Tf_1::Float64
        Tf_2::Float64
        Efd_lim::Tuple{Float64, Float64}
        Ke::Float64
        Te::Float64
        E_sat::Tuple{Float64, Float64}
        Se::Tuple{Float64, Float64}
        Kp::Float64
        Ki::Float64
        Kc::Float64
        V_ref::Float64
        saturation_coeffs::Tuple{Float64, Float64}
        ext::Dict{String, Any}
        states::Vector{Symbol}
        n_states::Int
        states_types::Vector{StateTypes.StateType}
        internal::InfrastructureSystemsInternal
    end

Generic Proportional/Integral Excitation System

# Arguments
- `Tr::Float64`: Regulator input filter time constant in s, validation range: (0, nothing)
- `Ka::Float64`: Voltage regulator gain, validation range: (0, nothing)
- `Ta::Float64`: Voltage regulator time constant in s, validation range: (0, nothing)
- `Va_lim::Tuple{Float64, Float64}`: Limits for pi controler (Vr_min, Vr_max)
- `Ta_2::Float64`: Voltage regulator time constant in s, validation range: (0, nothing)
- `Ta_3::Float64`: Voltage regulator time constant in s, validation range: (0, nothing)
- `Ta_4::Float64`: Voltage regulator time constant in s, validation range: (0, nothing)
- `Vr_lim::Tuple{Float64, Float64}`: Voltage regulator limits (regulator output) (Vi_min, Vi_max)
- `Kf::Float64`: Rate feedback gain, validation range: (0, nothing)
- `Tf_1::Float64`: Rate Feedback time constant in s, validation range: (&quot;eps()&quot;, nothing)
- `Tf_2::Float64`: Rate Feedback time constant in s, validation range: (0, nothing)
- `Efd_lim::Tuple{Float64, Float64}`: Field Voltage regulator limits (regulator output) (Efd_min, Efd_max)
- `Ke::Float64`: Exciter constant, validation range: (0, nothing)
- `Te::Float64`: Exciter time constant, validation range: (0, nothing)
- `E_sat::Tuple{Float64, Float64}`: Exciter output voltage for saturation factor: (E1, E2)
- `Se::Tuple{Float64, Float64}`: Exciter saturation factor at exciter output voltage: (Se(E1), Se(E2))
- `Kp::Float64`: Potential source gain, validation range: (0, nothing)
- `Ki::Float64`: current source gain, validation range: (0, nothing)
- `Kc::Float64`: Exciter regulation factor, validation range: (0, nothing)
- `V_ref::Float64`: Reference Voltage Set-point, validation range: (0, nothing)
- `saturation_coeffs::Tuple{Float64, Float64}`: Coefficients (A,B) of the function: Se(V) = B(V - A)^2/V
- `ext::Dict{String, Any}`
- `states::Vector{Symbol}`: The states are:
	Vm: Sensed terminal voltage,
	Vr1: First Lead-lag state,
	Vr2: Second regulator lead-lag state,
	Vr2: Third regulator lead-lag state 
	Vf: Exciter output 
	Vr3: First feedback integrator,
	Vr4: second feedback integrator
- `n_states::Int`: EXPIC1 has 6 states
- `states_types::Vector{StateTypes.StateType}`: EXPIC has 6 states
- `internal::InfrastructureSystemsInternal`: power system internal reference, do not modify
"""
mutable struct EXPIC1 <: AVR
    "Regulator input filter time constant in s"
    Tr::Float64
    "Voltage regulator gain"
    Ka::Float64
    "Voltage regulator time constant in s"
    Ta::Float64
    "Limits for pi controler (Vr_min, Vr_max)"
    Va_lim::Tuple{Float64, Float64}
    "Voltage regulator time constant in s"
    Ta_2::Float64
    "Voltage regulator time constant in s"
    Ta_3::Float64
    "Voltage regulator time constant in s"
    Ta_4::Float64
    "Voltage regulator limits (regulator output) (Vi_min, Vi_max)"
    Vr_lim::Tuple{Float64, Float64}
    "Rate feedback gain"
    Kf::Float64
    "Rate Feedback time constant in s"
    Tf_1::Float64
    "Rate Feedback time constant in s"
    Tf_2::Float64
    "Field Voltage regulator limits (regulator output) (Efd_min, Efd_max)"
    Efd_lim::Tuple{Float64, Float64}
    "Exciter constant"
    Ke::Float64
    "Exciter time constant"
    Te::Float64
    "Exciter output voltage for saturation factor: (E1, E2)"
    E_sat::Tuple{Float64, Float64}
    "Exciter saturation factor at exciter output voltage: (Se(E1), Se(E2))"
    Se::Tuple{Float64, Float64}
    "Potential source gain"
    Kp::Float64
    "current source gain"
    Ki::Float64
    "Exciter regulation factor"
    Kc::Float64
    "Reference Voltage Set-point"
    V_ref::Float64
    "Coefficients (A,B) of the function: Se(V) = B(V - A)^2/V"
    saturation_coeffs::Tuple{Float64, Float64}
    ext::Dict{String, Any}
    "The states are:
	Vm: Sensed terminal voltage,
	Vr1: First Lead-lag state,
	Vr2: Second regulator lead-lag state,
	Vr2: Third regulator lead-lag state 
	Vf: Exciter output 
	Vr3: First feedback integrator,
	Vr4: second feedback integrator"
    states::Vector{Symbol}
    "EXPIC1 has 6 states"
    n_states::Int
    "EXPIC has 6 states"
    states_types::Vector{StateTypes.StateType}
    "power system internal reference, do not modify"
    internal::InfrastructureSystemsInternal
end

function EXPIC1(Tr, Ka, Ta, Va_lim, Ta_2, Ta_3, Ta_4, Vr_lim, Kf, Tf_1, Tf_2, Efd_lim, Ke, Te, E_sat, Se, Kp, Ki, Kc, V_ref=1.0, saturation_coeffs=PowerSystems.get_avr_saturation(E_sat, Se), ext=Dict{String, Any}(), )
    EXPIC1(Tr, Ka, Ta, Va_lim, Ta_2, Ta_3, Ta_4, Vr_lim, Kf, Tf_1, Tf_2, Efd_lim, Ke, Te, E_sat, Se, Kp, Ki, Kc, V_ref, saturation_coeffs, ext, [:Vm, :Vr1, :Vr2, :Vf, :Vr3, :Vr4], 6, [StateTypes.Hybrid, StateTypes.Hybrid, StateTypes.Hybrid, StateTypes.Hybrid, StateTypes.Differential, StateTypes.Differential], InfrastructureSystemsInternal(), )
end

function EXPIC1(; Tr, Ka, Ta, Va_lim, Ta_2, Ta_3, Ta_4, Vr_lim, Kf, Tf_1, Tf_2, Efd_lim, Ke, Te, E_sat, Se, Kp, Ki, Kc, V_ref=1.0, saturation_coeffs=PowerSystems.get_avr_saturation(E_sat, Se), ext=Dict{String, Any}(), )
    EXPIC1(Tr, Ka, Ta, Va_lim, Ta_2, Ta_3, Ta_4, Vr_lim, Kf, Tf_1, Tf_2, Efd_lim, Ke, Te, E_sat, Se, Kp, Ki, Kc, V_ref, saturation_coeffs, ext, )
end

# Constructor for demo purposes; non-functional.
function EXPIC1(::Nothing)
    EXPIC1(;
        Tr=0,
        Ka=0,
        Ta=0,
        Va_lim=(0.0, 0.0),
        Ta_2=0,
        Ta_3=0,
        Ta_4=0,
        Vr_lim=(0.0, 0.0),
        Kf=0,
        Tf_1=0,
        Tf_2=0,
        Efd_lim=(0.0, 0.0),
        Ke=0,
        Te=0,
        E_sat=(0.0, 0.0),
        Se=(0.0, 0.0),
        Kp=0,
        Ki=0,
        Kc=0,
        V_ref=0,
        saturation_coeffs=(0.0, 0.0),
        ext=Dict{String, Any}(),
    )
end

"""Get EXPIC1 Tr."""
get_Tr(value::EXPIC1) = value.Tr
"""Get EXPIC1 Ka."""
get_Ka(value::EXPIC1) = value.Ka
"""Get EXPIC1 Ta."""
get_Ta(value::EXPIC1) = value.Ta
"""Get EXPIC1 Va_lim."""
get_Va_lim(value::EXPIC1) = value.Va_lim
"""Get EXPIC1 Ta_2."""
get_Ta_2(value::EXPIC1) = value.Ta_2
"""Get EXPIC1 Ta_3."""
get_Ta_3(value::EXPIC1) = value.Ta_3
"""Get EXPIC1 Ta_4."""
get_Ta_4(value::EXPIC1) = value.Ta_4
"""Get EXPIC1 Vr_lim."""
get_Vr_lim(value::EXPIC1) = value.Vr_lim
"""Get EXPIC1 Kf."""
get_Kf(value::EXPIC1) = value.Kf
"""Get EXPIC1 Tf_1."""
get_Tf_1(value::EXPIC1) = value.Tf_1
"""Get EXPIC1 Tf_2."""
get_Tf_2(value::EXPIC1) = value.Tf_2
"""Get EXPIC1 Efd_lim."""
get_Efd_lim(value::EXPIC1) = value.Efd_lim
"""Get EXPIC1 Ke."""
get_Ke(value::EXPIC1) = value.Ke
"""Get EXPIC1 Te."""
get_Te(value::EXPIC1) = value.Te
"""Get EXPIC1 E_sat."""
get_E_sat(value::EXPIC1) = value.E_sat
"""Get EXPIC1 Se."""
get_Se(value::EXPIC1) = value.Se
"""Get EXPIC1 Kp."""
get_Kp(value::EXPIC1) = value.Kp
"""Get EXPIC1 Ki."""
get_Ki(value::EXPIC1) = value.Ki
"""Get EXPIC1 Kc."""
get_Kc(value::EXPIC1) = value.Kc
"""Get EXPIC1 V_ref."""
get_V_ref(value::EXPIC1) = value.V_ref
"""Get EXPIC1 saturation_coeffs."""
get_saturation_coeffs(value::EXPIC1) = value.saturation_coeffs
"""Get EXPIC1 ext."""
get_ext(value::EXPIC1) = value.ext
"""Get EXPIC1 states."""
get_states(value::EXPIC1) = value.states
"""Get EXPIC1 n_states."""
get_n_states(value::EXPIC1) = value.n_states
"""Get EXPIC1 states_types."""
get_states_types(value::EXPIC1) = value.states_types
"""Get EXPIC1 internal."""
get_internal(value::EXPIC1) = value.internal

"""Set EXPIC1 Tr."""
set_Tr!(value::EXPIC1, val::Float64) = value.Tr = val
"""Set EXPIC1 Ka."""
set_Ka!(value::EXPIC1, val::Float64) = value.Ka = val
"""Set EXPIC1 Ta."""
set_Ta!(value::EXPIC1, val::Float64) = value.Ta = val
"""Set EXPIC1 Va_lim."""
set_Va_lim!(value::EXPIC1, val::Tuple{Float64, Float64}) = value.Va_lim = val
"""Set EXPIC1 Ta_2."""
set_Ta_2!(value::EXPIC1, val::Float64) = value.Ta_2 = val
"""Set EXPIC1 Ta_3."""
set_Ta_3!(value::EXPIC1, val::Float64) = value.Ta_3 = val
"""Set EXPIC1 Ta_4."""
set_Ta_4!(value::EXPIC1, val::Float64) = value.Ta_4 = val
"""Set EXPIC1 Vr_lim."""
set_Vr_lim!(value::EXPIC1, val::Tuple{Float64, Float64}) = value.Vr_lim = val
"""Set EXPIC1 Kf."""
set_Kf!(value::EXPIC1, val::Float64) = value.Kf = val
"""Set EXPIC1 Tf_1."""
set_Tf_1!(value::EXPIC1, val::Float64) = value.Tf_1 = val
"""Set EXPIC1 Tf_2."""
set_Tf_2!(value::EXPIC1, val::Float64) = value.Tf_2 = val
"""Set EXPIC1 Efd_lim."""
set_Efd_lim!(value::EXPIC1, val::Tuple{Float64, Float64}) = value.Efd_lim = val
"""Set EXPIC1 Ke."""
set_Ke!(value::EXPIC1, val::Float64) = value.Ke = val
"""Set EXPIC1 Te."""
set_Te!(value::EXPIC1, val::Float64) = value.Te = val
"""Set EXPIC1 E_sat."""
set_E_sat!(value::EXPIC1, val::Tuple{Float64, Float64}) = value.E_sat = val
"""Set EXPIC1 Se."""
set_Se!(value::EXPIC1, val::Tuple{Float64, Float64}) = value.Se = val
"""Set EXPIC1 Kp."""
set_Kp!(value::EXPIC1, val::Float64) = value.Kp = val
"""Set EXPIC1 Ki."""
set_Ki!(value::EXPIC1, val::Float64) = value.Ki = val
"""Set EXPIC1 Kc."""
set_Kc!(value::EXPIC1, val::Float64) = value.Kc = val
"""Set EXPIC1 V_ref."""
set_V_ref!(value::EXPIC1, val::Float64) = value.V_ref = val
"""Set EXPIC1 saturation_coeffs."""
set_saturation_coeffs!(value::EXPIC1, val::Tuple{Float64, Float64}) = value.saturation_coeffs = val
"""Set EXPIC1 ext."""
set_ext!(value::EXPIC1, val::Dict{String, Any}) = value.ext = val
"""Set EXPIC1 states."""
set_states!(value::EXPIC1, val::Vector{Symbol}) = value.states = val
"""Set EXPIC1 n_states."""
set_n_states!(value::EXPIC1, val::Int) = value.n_states = val
"""Set EXPIC1 states_types."""
set_states_types!(value::EXPIC1, val::Vector{StateTypes.StateType}) = value.states_types = val
"""Set EXPIC1 internal."""
set_internal!(value::EXPIC1, val::InfrastructureSystemsInternal) = value.internal = val
