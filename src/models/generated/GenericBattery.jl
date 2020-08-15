#=
This file is auto-generated. Do not edit.
=#
"""
    mutable struct GenericBattery <: Storage
        name::String
        available::Bool
        bus::Bus
        prime_mover::PrimeMovers.PrimeMover
        initial_energy::Float64
        state_of_charge_limits::NamedTuple{(:min, :max), Tuple{Float64, Float64}}
        rating::Float64
        active_power::Float64
        input_active_power_limits::NamedTuple{(:min, :max), Tuple{Float64, Float64}}
        output_active_power_limits::NamedTuple{(:min, :max), Tuple{Float64, Float64}}
        efficiency::NamedTuple{(:in, :out), Tuple{Float64, Float64}}
        reactive_power::Float64
        reactive_power_limits::Union{Nothing, Min_Max}
        base_power::Float64
        services::Vector{Service}
        dynamic_injector::Union{Nothing, DynamicInjection}
        ext::Dict{String, Any}
        forecasts::InfrastructureSystems.Forecasts
        internal::InfrastructureSystemsInternal
    end

Data structure for a generic battery

# Arguments
- `name::String`
- `available::Bool`
- `bus::Bus`
- `prime_mover::PrimeMovers.PrimeMover`: Prime mover technology according to EIA 923
- `initial_energy::Float64`: State of Charge of the Battery p.u.-hr, validation range: (0, nothing), action if invalid: error
- `state_of_charge_limits::NamedTuple{(:min, :max), Tuple{Float64, Float64}}`: Maximum and Minimum storage capacity in p.u.-hr, validation range: (0, nothing), action if invalid: error
- `rating::Float64`
- `active_power::Float64`
- `input_active_power_limits::NamedTuple{(:min, :max), Tuple{Float64, Float64}}`, validation range: (0, nothing), action if invalid: error
- `output_active_power_limits::NamedTuple{(:min, :max), Tuple{Float64, Float64}}`, validation range: (0, nothing), action if invalid: error
- `efficiency::NamedTuple{(:in, :out), Tuple{Float64, Float64}}`, validation range: (0, 1), action if invalid: warn
- `reactive_power::Float64`, validation range: reactive_power_limits, action if invalid: warn
- `reactive_power_limits::Union{Nothing, Min_Max}`
- `base_power::Float64`: Base power of the unit in MVA, validation range: (0, nothing), action if invalid: warn
- `services::Vector{Service}`: Services that this device contributes to
- `dynamic_injector::Union{Nothing, DynamicInjection}`: corresponding dynamic injection device
- `ext::Dict{String, Any}`
- `forecasts::InfrastructureSystems.Forecasts`: internal forecast storage
- `internal::InfrastructureSystemsInternal`: power system internal reference, do not modify
"""
mutable struct GenericBattery <: Storage
    name::String
    available::Bool
    bus::Bus
    "Prime mover technology according to EIA 923"
    prime_mover::PrimeMovers.PrimeMover
    "State of Charge of the Battery p.u.-hr"
    initial_energy::Float64
    "Maximum and Minimum storage capacity in p.u.-hr"
    state_of_charge_limits::NamedTuple{(:min, :max), Tuple{Float64, Float64}}
    rating::Float64
    active_power::Float64
    input_active_power_limits::NamedTuple{(:min, :max), Tuple{Float64, Float64}}
    output_active_power_limits::NamedTuple{(:min, :max), Tuple{Float64, Float64}}
    efficiency::NamedTuple{(:in, :out), Tuple{Float64, Float64}}
    reactive_power::Float64
    reactive_power_limits::Union{Nothing, Min_Max}
    "Base power of the unit in MVA"
    base_power::Float64
    "Services that this device contributes to"
    services::Vector{Service}
    "corresponding dynamic injection device"
    dynamic_injector::Union{Nothing, DynamicInjection}
    ext::Dict{String, Any}
    "internal forecast storage"
    forecasts::InfrastructureSystems.Forecasts
    "power system internal reference, do not modify"
    internal::InfrastructureSystemsInternal
end

function GenericBattery(name, available, bus, prime_mover, initial_energy, state_of_charge_limits, rating, active_power, input_active_power_limits, output_active_power_limits, efficiency, reactive_power, reactive_power_limits, base_power, services=Device[], dynamic_injector=nothing, ext=Dict{String, Any}(), forecasts=InfrastructureSystems.Forecasts(), )
    GenericBattery(name, available, bus, prime_mover, initial_energy, state_of_charge_limits, rating, active_power, input_active_power_limits, output_active_power_limits, efficiency, reactive_power, reactive_power_limits, base_power, services, dynamic_injector, ext, forecasts, InfrastructureSystemsInternal(), )
end

function GenericBattery(; name, available, bus, prime_mover, initial_energy, state_of_charge_limits, rating, active_power, input_active_power_limits, output_active_power_limits, efficiency, reactive_power, reactive_power_limits, base_power, services=Device[], dynamic_injector=nothing, ext=Dict{String, Any}(), forecasts=InfrastructureSystems.Forecasts(), )
    GenericBattery(name, available, bus, prime_mover, initial_energy, state_of_charge_limits, rating, active_power, input_active_power_limits, output_active_power_limits, efficiency, reactive_power, reactive_power_limits, base_power, services, dynamic_injector, ext, forecasts, )
end

# Constructor for demo purposes; non-functional.
function GenericBattery(::Nothing)
    GenericBattery(;
        name="init",
        available=false,
        bus=Bus(nothing),
        prime_mover=PrimeMovers.BA,
        initial_energy=0.0,
        state_of_charge_limits=(min=0.0, max=0.0),
        rating=0.0,
        active_power=0.0,
        input_active_power_limits=(min=0.0, max=0.0),
        output_active_power_limits=(min=0.0, max=0.0),
        efficiency=(in=0.0, out=0.0),
        reactive_power=0.0,
        reactive_power_limits=(min=0.0, max=0.0),
        base_power=0.0,
        services=Device[],
        dynamic_injector=nothing,
        ext=Dict{String, Any}(),
        forecasts=InfrastructureSystems.Forecasts(),
    )
end


InfrastructureSystems.get_name(value::GenericBattery) = value.name
"""Get GenericBattery available."""
get_available(value::GenericBattery) = value.available
"""Get GenericBattery bus."""
get_bus(value::GenericBattery) = value.bus
"""Get GenericBattery prime_mover."""
get_prime_mover(value::GenericBattery) = value.prime_mover
"""Get GenericBattery initial_energy."""
get_initial_energy(value::GenericBattery) = get_value(value, value.initial_energy)
"""Get GenericBattery state_of_charge_limits."""
get_state_of_charge_limits(value::GenericBattery) = get_value(value, value.state_of_charge_limits)
"""Get GenericBattery rating."""
get_rating(value::GenericBattery) = get_value(value, value.rating)
"""Get GenericBattery active_power."""
get_active_power(value::GenericBattery) = get_value(value, value.active_power)
"""Get GenericBattery input_active_power_limits."""
get_input_active_power_limits(value::GenericBattery) = get_value(value, value.input_active_power_limits)
"""Get GenericBattery output_active_power_limits."""
get_output_active_power_limits(value::GenericBattery) = get_value(value, value.output_active_power_limits)
"""Get GenericBattery efficiency."""
get_efficiency(value::GenericBattery) = value.efficiency
"""Get GenericBattery reactive_power."""
get_reactive_power(value::GenericBattery) = get_value(value, value.reactive_power)
"""Get GenericBattery reactive_power_limits."""
get_reactive_power_limits(value::GenericBattery) = get_value(value, value.reactive_power_limits)
"""Get GenericBattery base_power."""
get_base_power(value::GenericBattery) = value.base_power
"""Get GenericBattery services."""
get_services(value::GenericBattery) = value.services
"""Get GenericBattery dynamic_injector."""
get_dynamic_injector(value::GenericBattery) = value.dynamic_injector
"""Get GenericBattery ext."""
get_ext(value::GenericBattery) = value.ext

InfrastructureSystems.get_forecasts(value::GenericBattery) = value.forecasts
"""Get GenericBattery internal."""
get_internal(value::GenericBattery) = value.internal


InfrastructureSystems.set_name!(value::GenericBattery, val::String) = value.name = val
"""Set GenericBattery available."""
set_available!(value::GenericBattery, val::Bool) = value.available = val
"""Set GenericBattery bus."""
set_bus!(value::GenericBattery, val::Bus) = value.bus = val
"""Set GenericBattery prime_mover."""
set_prime_mover!(value::GenericBattery, val::PrimeMovers.PrimeMover) = value.prime_mover = val
"""Set GenericBattery initial_energy."""
set_initial_energy!(value::GenericBattery, val::Float64) = value.initial_energy = val
"""Set GenericBattery state_of_charge_limits."""
set_state_of_charge_limits!(value::GenericBattery, val::NamedTuple{(:min, :max), Tuple{Float64, Float64}}) = value.state_of_charge_limits = val
"""Set GenericBattery rating."""
set_rating!(value::GenericBattery, val::Float64) = value.rating = val
"""Set GenericBattery active_power."""
set_active_power!(value::GenericBattery, val::Float64) = value.active_power = val
"""Set GenericBattery input_active_power_limits."""
set_input_active_power_limits!(value::GenericBattery, val::NamedTuple{(:min, :max), Tuple{Float64, Float64}}) = value.input_active_power_limits = val
"""Set GenericBattery output_active_power_limits."""
set_output_active_power_limits!(value::GenericBattery, val::NamedTuple{(:min, :max), Tuple{Float64, Float64}}) = value.output_active_power_limits = val
"""Set GenericBattery efficiency."""
set_efficiency!(value::GenericBattery, val::NamedTuple{(:in, :out), Tuple{Float64, Float64}}) = value.efficiency = val
"""Set GenericBattery reactive_power."""
set_reactive_power!(value::GenericBattery, val::Float64) = value.reactive_power = val
"""Set GenericBattery reactive_power_limits."""
set_reactive_power_limits!(value::GenericBattery, val::Union{Nothing, Min_Max}) = value.reactive_power_limits = val
"""Set GenericBattery base_power."""
set_base_power!(value::GenericBattery, val::Float64) = value.base_power = val
"""Set GenericBattery services."""
set_services!(value::GenericBattery, val::Vector{Service}) = value.services = val
"""Set GenericBattery ext."""
set_ext!(value::GenericBattery, val::Dict{String, Any}) = value.ext = val

InfrastructureSystems.set_forecasts!(value::GenericBattery, val::InfrastructureSystems.Forecasts) = value.forecasts = val
"""Set GenericBattery internal."""
set_internal!(value::GenericBattery, val::InfrastructureSystemsInternal) = value.internal = val
