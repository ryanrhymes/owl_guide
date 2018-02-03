Constants
===============================================================================

This document is auto-generated for Owl's APIs.
#440 entries have been extracted.
timestamp:1517690291

Maths constants
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val e : float

e



.. code-block:: ocaml

  val euler : float

Euler constant



.. code-block:: ocaml

  val log2e : float

log2_e



.. code-block:: ocaml

  val log10e : float

log_10 e



.. code-block:: ocaml

  val loge2 : float

log_e 2



.. code-block:: ocaml

  val loge10 : float

log_e 10



.. code-block:: ocaml

  val logepi : float

log_e pi



.. code-block:: ocaml

  val sqrt1_2 : float

1/sqrt(2)



.. code-block:: ocaml

  val sqrt2 : float

sqrt(2)



.. code-block:: ocaml

  val sqrt3 : float

sqrt(3)



.. code-block:: ocaml

  val sqrtpi : float

sqrt(pi)



.. code-block:: ocaml

  val pi : float

pi



.. code-block:: ocaml

  val pi2 : float

2*pi



.. code-block:: ocaml

  val pi4 : float

4*pi



.. code-block:: ocaml

  val pi_2 : float

pi/2



.. code-block:: ocaml

  val pi_4 : float

pi/4



Constants depending on Bigarray kind
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val zero : ('a, 'b) Bigarray.kind -> 'a

``zero kind`` returns value zero of the given number type ``kind``.



.. code-block:: ocaml

  val one : ('a, 'b) Bigarray.kind -> 'a

``one kind`` returns value one of the given number type ``kind``.



.. code-block:: ocaml

  val neg_one : ('a, 'b) Bigarray.kind -> 'a

``neg_one kind`` returns negative one of the given number type ``kind``.



.. code-block:: ocaml

  val pos_inf : ('a, 'b) Bigarray.kind -> 'a

``pos_inf kind`` returns positive infinity of the given number type ``kind``.



.. code-block:: ocaml

  val neg_inf : ('a, 'b) Bigarray.kind -> 'a

``neg_inf kind`` returns negative infinity of the given number type ``kind``.



Unit prefixes
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val fine_structure : float

fine_structure



.. code-block:: ocaml

  val avogadro : float

avogadro



.. code-block:: ocaml

  val yotta : float

yotta



.. code-block:: ocaml

  val zetta : float

zetta



.. code-block:: ocaml

  val exa : float

exa



.. code-block:: ocaml

  val peta : float

peta



.. code-block:: ocaml

  val tera : float

tera



.. code-block:: ocaml

  val giga : float

giga



.. code-block:: ocaml

  val mega : float

mega



.. code-block:: ocaml

  val kilo : float

kilo



.. code-block:: ocaml

  val hecto : float

hecto



.. code-block:: ocaml

  val deca : float

deca



.. code-block:: ocaml

  val deci : float

deci



.. code-block:: ocaml

  val centi : float

centi



.. code-block:: ocaml

  val milli : float

milli



.. code-block:: ocaml

  val micro : float

micro



.. code-block:: ocaml

  val nano : float

nano



.. code-block:: ocaml

  val pico : float

pico



.. code-block:: ocaml

  val femto : float

femto



.. code-block:: ocaml

  val atto : float

atto



.. code-block:: ocaml

  val zepto : float

zepto



.. code-block:: ocaml

  val yocto : float

yocto



SI: International System of Units
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val speed_of_light : float

speed_of_light



.. code-block:: ocaml

  val gravitational_constant : float

gravitational_constant



.. code-block:: ocaml

  val plancks_constant_h : float

plancks_constant_h



.. code-block:: ocaml

  val plancks_constant_hbar : float

plancks_constant_hbar



.. code-block:: ocaml

  val astronomical_unit : float

astronomical_unit



.. code-block:: ocaml

  val light_year : float

light_year



.. code-block:: ocaml

  val parsec : float

parsec



.. code-block:: ocaml

  val grav_accel : float

grav_accel



.. code-block:: ocaml

  val electron_volt : float

electron_volt



.. code-block:: ocaml

  val mass_electron : float

mass_electron



.. code-block:: ocaml

  val mass_muon : float

mass_muon



.. code-block:: ocaml

  val mass_proton : float

mass_proton



.. code-block:: ocaml

  val mass_neutron : float

mass_neutron



.. code-block:: ocaml

  val rydberg : float

rydberg



.. code-block:: ocaml

  val boltzmann : float

boltzmann



.. code-block:: ocaml

  val molar_gas : float

molar_gas



.. code-block:: ocaml

  val standard_gas_volume : float

standard_gas_volume



.. code-block:: ocaml

  val minute : float

minute



.. code-block:: ocaml

  val hour : float

hour



.. code-block:: ocaml

  val day : float

day



.. code-block:: ocaml

  val week : float

week



.. code-block:: ocaml

  val inch : float

inch



.. code-block:: ocaml

  val foot : float

foot



.. code-block:: ocaml

  val yard : float

yard



.. code-block:: ocaml

  val mile : float

mile



.. code-block:: ocaml

  val nautical_mile : float

nautical_mile



.. code-block:: ocaml

  val fathom : float

fathom



.. code-block:: ocaml

  val mil : float

mil



.. code-block:: ocaml

  val point : float

point



.. code-block:: ocaml

  val texpoint : float

texpoint



.. code-block:: ocaml

  val micron : float

micron



.. code-block:: ocaml

  val angstrom : float

angstrom



.. code-block:: ocaml

  val hectare : float

hectare



.. code-block:: ocaml

  val acre : float

acre



.. code-block:: ocaml

  val barn : float

barn



.. code-block:: ocaml

  val liter : float

liter



.. code-block:: ocaml

  val us_gallon : float

us_gallon



.. code-block:: ocaml

  val quart : float

quart



.. code-block:: ocaml

  val pint : float

pint



.. code-block:: ocaml

  val cup : float

cup



.. code-block:: ocaml

  val fluid_ounce : float

fluid_ounce



.. code-block:: ocaml

  val tablespoon : float

tablespoon



.. code-block:: ocaml

  val teaspoon : float

teaspoon



.. code-block:: ocaml

  val canadian_gallon : float

canadian_gallon



.. code-block:: ocaml

  val uk_gallon : float

uk_gallon



.. code-block:: ocaml

  val miles_per_hour : float

miles_per_hour



.. code-block:: ocaml

  val kilometers_per_hour : float

kilometers_per_hour



.. code-block:: ocaml

  val knot : float

knot



.. code-block:: ocaml

  val pound_mass : float

pound_mass



.. code-block:: ocaml

  val ounce_mass : float

ounce_mass



.. code-block:: ocaml

  val ton : float

ton



.. code-block:: ocaml

  val metric_ton : float

metric_ton



.. code-block:: ocaml

  val uk_ton : float

uk_ton



.. code-block:: ocaml

  val troy_ounce : float

troy_ounce



.. code-block:: ocaml

  val carat : float

carat



.. code-block:: ocaml

  val unified_atomic_mass : float

unified_atomic_mass



.. code-block:: ocaml

  val gram_force : float

gram_force



.. code-block:: ocaml

  val pound_force : float

pound_force



.. code-block:: ocaml

  val kilopound_force : float

kilopound_force



.. code-block:: ocaml

  val poundal : float

poundal



.. code-block:: ocaml

  val calorie : float

calorie



.. code-block:: ocaml

  val btu : float

btu



.. code-block:: ocaml

  val therm : float

therm



.. code-block:: ocaml

  val horsepower : float

horsepower



.. code-block:: ocaml

  val bar : float

bar



.. code-block:: ocaml

  val std_atmosphere : float

std_atmosphere



.. code-block:: ocaml

  val torr : float

torr



.. code-block:: ocaml

  val meter_of_mercury : float

meter_of_mercury



.. code-block:: ocaml

  val inch_of_mercury : float

inch_of_mercury



.. code-block:: ocaml

  val inch_of_water : float

inch_of_water



.. code-block:: ocaml

  val psi : float

psi



.. code-block:: ocaml

  val poise : float

poise



.. code-block:: ocaml

  val stokes : float

stokes



.. code-block:: ocaml

  val stilb : float

stilb



.. code-block:: ocaml

  val lumen : float

lumen



.. code-block:: ocaml

  val lux : float

lux



.. code-block:: ocaml

  val phot : float

phot



.. code-block:: ocaml

  val footcandle : float

footcandle



.. code-block:: ocaml

  val lambert : float

lambert



.. code-block:: ocaml

  val footlambert : float

footlambert



.. code-block:: ocaml

  val curie : float

curie



.. code-block:: ocaml

  val roentgen : float

roentgen



.. code-block:: ocaml

  val rad : float

rad



.. code-block:: ocaml

  val solar_mass : float

solar_mass



.. code-block:: ocaml

  val bohr_radius : float

bohr_radius



.. code-block:: ocaml

  val newton : float

newton



.. code-block:: ocaml

  val dyne : float

dyne



.. code-block:: ocaml

  val joule : float

joule



.. code-block:: ocaml

  val erg : float

erg



.. code-block:: ocaml

  val stefan_boltzmann_constant : float

stefan_boltzmann_constant



.. code-block:: ocaml

  val thomson_cross_section : float

thomson_cross_section



.. code-block:: ocaml

  val bohr_magneton : float

bohr_magneton



.. code-block:: ocaml

  val nuclear_magneton : float

nuclear_magneton



.. code-block:: ocaml

  val electron_magnetic_moment : float

electron_magnetic_moment



.. code-block:: ocaml

  val proton_magnetic_moment : float

proton_magnetic_moment



.. code-block:: ocaml

  val faraday : float

faraday



.. code-block:: ocaml

  val electron_charge : float

electron_charge



.. code-block:: ocaml

  val vacuum_permittivity : float

vacuum_permittivity



.. code-block:: ocaml

  val vacuum_permeability : float

vacuum_permeability



.. code-block:: ocaml

  val debye : float

debye



.. code-block:: ocaml

  val gauss : float

gauss



MKS: MKS system of units
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val speed_of_light : float

speed_of_light



.. code-block:: ocaml

  val gravitational_constant : float

gravitational_constant



.. code-block:: ocaml

  val plancks_constant_h : float

plancks_constant_h



.. code-block:: ocaml

  val plancks_constant_hbar : float

plancks_constant_hbar



.. code-block:: ocaml

  val astronomical_unit : float

astronomical_unit



.. code-block:: ocaml

  val light_year : float

light_year



.. code-block:: ocaml

  val parsec : float

parsec



.. code-block:: ocaml

  val grav_accel : float

grav_accel



.. code-block:: ocaml

  val electron_volt : float

electron_volt



.. code-block:: ocaml

  val mass_electron : float

mass_electron



.. code-block:: ocaml

  val mass_muon : float

mass_muon



.. code-block:: ocaml

  val mass_proton : float

mass_proton



.. code-block:: ocaml

  val mass_neutron : float

mass_neutron



.. code-block:: ocaml

  val rydberg : float

rydberg



.. code-block:: ocaml

  val boltzmann : float

boltzmann



.. code-block:: ocaml

  val molar_gas : float

molar_gas



.. code-block:: ocaml

  val standard_gas_volume : float

standard_gas_volume



.. code-block:: ocaml

  val minute : float

minute



.. code-block:: ocaml

  val hour : float

hour



.. code-block:: ocaml

  val day : float

day



.. code-block:: ocaml

  val week : float

week



.. code-block:: ocaml

  val inch : float

inch



.. code-block:: ocaml

  val foot : float

foot



.. code-block:: ocaml

  val yard : float

yard



.. code-block:: ocaml

  val mile : float

mile



.. code-block:: ocaml

  val nautical_mile : float

nautical_mile



.. code-block:: ocaml

  val fathom : float

fathom



.. code-block:: ocaml

  val mil : float

mil



.. code-block:: ocaml

  val point : float

point



.. code-block:: ocaml

  val texpoint : float

texpoint



.. code-block:: ocaml

  val micron : float

micron



.. code-block:: ocaml

  val angstrom : float

angstrom



.. code-block:: ocaml

  val hectare : float

hectare



.. code-block:: ocaml

  val acre : float

acre



.. code-block:: ocaml

  val barn : float

barn



.. code-block:: ocaml

  val liter : float

liter



.. code-block:: ocaml

  val us_gallon : float

us_gallon



.. code-block:: ocaml

  val quart : float

quart



.. code-block:: ocaml

  val pint : float

pint



.. code-block:: ocaml

  val cup : float

cup



.. code-block:: ocaml

  val fluid_ounce : float

fluid_ounce



.. code-block:: ocaml

  val tablespoon : float

tablespoon



.. code-block:: ocaml

  val teaspoon : float

teaspoon



.. code-block:: ocaml

  val canadian_gallon : float

canadian_gallon



.. code-block:: ocaml

  val uk_gallon : float

uk_gallon



.. code-block:: ocaml

  val miles_per_hour : float

miles_per_hour



.. code-block:: ocaml

  val kilometers_per_hour : float

kilometers_per_hour



.. code-block:: ocaml

  val knot : float

knot



.. code-block:: ocaml

  val pound_mass : float

pound_mass



.. code-block:: ocaml

  val ounce_mass : float

ounce_mass



.. code-block:: ocaml

  val ton : float

ton



.. code-block:: ocaml

  val metric_ton : float

metric_ton



.. code-block:: ocaml

  val uk_ton : float

uk_ton



.. code-block:: ocaml

  val troy_ounce : float

troy_ounce



.. code-block:: ocaml

  val carat : float

carat



.. code-block:: ocaml

  val unified_atomic_mass : float

unified_atomic_mass



.. code-block:: ocaml

  val gram_force : float

gram_force



.. code-block:: ocaml

  val pound_force : float

pound_force



.. code-block:: ocaml

  val kilopound_force : float

kilopound_force



.. code-block:: ocaml

  val poundal : float

poundal



.. code-block:: ocaml

  val calorie : float

calorie



.. code-block:: ocaml

  val btu : float

btu



.. code-block:: ocaml

  val therm : float

therm



.. code-block:: ocaml

  val horsepower : float

horsepower



.. code-block:: ocaml

  val bar : float

bar



.. code-block:: ocaml

  val std_atmosphere : float

std_atmosphere



.. code-block:: ocaml

  val torr : float

torr



.. code-block:: ocaml

  val meter_of_mercury : float

meter_of_mercury



.. code-block:: ocaml

  val inch_of_mercury : float

inch_of_mercury



.. code-block:: ocaml

  val inch_of_water : float

inch_of_water



.. code-block:: ocaml

  val psi : float

psi



.. code-block:: ocaml

  val poise : float

poise



.. code-block:: ocaml

  val stokes : float

stokes



.. code-block:: ocaml

  val stilb : float

stilb



.. code-block:: ocaml

  val lumen : float

lumen



.. code-block:: ocaml

  val lux : float

lux



.. code-block:: ocaml

  val phot : float

phot



.. code-block:: ocaml

  val footcandle : float

footcandle



.. code-block:: ocaml

  val lambert : float

lambert



.. code-block:: ocaml

  val footlambert : float

footlambert



.. code-block:: ocaml

  val curie : float

curie



.. code-block:: ocaml

  val roentgen : float

roentgen



.. code-block:: ocaml

  val rad : float

rad



.. code-block:: ocaml

  val solar_mass : float

solar_mass



.. code-block:: ocaml

  val bohr_radius : float

bohr_radius



.. code-block:: ocaml

  val newton : float

newton



.. code-block:: ocaml

  val dyne : float

dyne



.. code-block:: ocaml

  val joule : float

joule



.. code-block:: ocaml

  val erg : float

erg



.. code-block:: ocaml

  val stefan_boltzmann_constant : float

stefan_boltzmann_constant



.. code-block:: ocaml

  val thomson_cross_section : float

thomson_cross_section



.. code-block:: ocaml

  val bohr_magneton : float

bohr_magneton



.. code-block:: ocaml

  val nuclear_magneton : float

nuclear_magneton



.. code-block:: ocaml

  val electron_magnetic_moment : float

electron_magnetic_moment



.. code-block:: ocaml

  val proton_magnetic_moment : float

proton_magnetic_moment



.. code-block:: ocaml

  val faraday : float

faraday



.. code-block:: ocaml

  val electron_charge : float

electron_charge



.. code-block:: ocaml

  val vacuum_permittivity : float

vacuum_permittivity



.. code-block:: ocaml

  val vacuum_permeability : float

vacuum_permeability



.. code-block:: ocaml

  val debye : float

debye



.. code-block:: ocaml

  val gauss : float

gauss



CGS: Centimetre–gram–second system of units
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val speed_of_light : float

speed_of_light



.. code-block:: ocaml

  val gravitational_constant : float

gravitational_constant



.. code-block:: ocaml

  val plancks_constant_h : float

plancks_constant_h



.. code-block:: ocaml

  val plancks_constant_hbar : float

plancks_constant_hbar



.. code-block:: ocaml

  val astronomical_unit : float

astronomical_unit



.. code-block:: ocaml

  val light_year : float

light_year



.. code-block:: ocaml

  val parsec : float

parsec



.. code-block:: ocaml

  val grav_accel : float

grav_accel



.. code-block:: ocaml

  val electron_volt : float

electron_volt



.. code-block:: ocaml

  val mass_electron : float

mass_electron



.. code-block:: ocaml

  val mass_muon : float

mass_muon



.. code-block:: ocaml

  val mass_proton : float

mass_proton



.. code-block:: ocaml

  val mass_neutron : float

mass_neutron



.. code-block:: ocaml

  val rydberg : float

rydberg



.. code-block:: ocaml

  val boltzmann : float

boltzmann



.. code-block:: ocaml

  val molar_gas : float

molar_gas



.. code-block:: ocaml

  val standard_gas_volume : float

standard_gas_volume



.. code-block:: ocaml

  val minute : float

minute



.. code-block:: ocaml

  val hour : float

hour



.. code-block:: ocaml

  val day : float

day



.. code-block:: ocaml

  val week : float

week



.. code-block:: ocaml

  val inch : float

inch



.. code-block:: ocaml

  val foot : float

foot



.. code-block:: ocaml

  val yard : float

yard



.. code-block:: ocaml

  val mile : float

mile



.. code-block:: ocaml

  val nautical_mile : float

nautical_mile



.. code-block:: ocaml

  val fathom : float

fathom



.. code-block:: ocaml

  val mil : float

mil



.. code-block:: ocaml

  val point : float

point



.. code-block:: ocaml

  val texpoint : float

texpoint



.. code-block:: ocaml

  val micron : float

micron



.. code-block:: ocaml

  val angstrom : float

angstrom



.. code-block:: ocaml

  val hectare : float

hectare



.. code-block:: ocaml

  val acre : float

acre



.. code-block:: ocaml

  val barn : float

barn



.. code-block:: ocaml

  val liter : float

liter



.. code-block:: ocaml

  val us_gallon : float

us_gallon



.. code-block:: ocaml

  val quart : float

quart



.. code-block:: ocaml

  val pint : float

pint



.. code-block:: ocaml

  val cup : float

cup



.. code-block:: ocaml

  val fluid_ounce : float

fluid_ounce



.. code-block:: ocaml

  val tablespoon : float

tablespoon



.. code-block:: ocaml

  val teaspoon : float

teaspoon



.. code-block:: ocaml

  val canadian_gallon : float

canadian_gallon



.. code-block:: ocaml

  val uk_gallon : float

uk_gallon



.. code-block:: ocaml

  val miles_per_hour : float

miles_per_hour



.. code-block:: ocaml

  val kilometers_per_hour : float

kilometers_per_hour



.. code-block:: ocaml

  val knot : float

knot



.. code-block:: ocaml

  val pound_mass : float

pound_mass



.. code-block:: ocaml

  val ounce_mass : float

ounce_mass



.. code-block:: ocaml

  val ton : float

ton



.. code-block:: ocaml

  val metric_ton : float

metric_ton



.. code-block:: ocaml

  val uk_ton : float

uk_ton



.. code-block:: ocaml

  val troy_ounce : float

troy_ounce



.. code-block:: ocaml

  val carat : float

carat



.. code-block:: ocaml

  val unified_atomic_mass : float

unified_atomic_mass



.. code-block:: ocaml

  val gram_force : float

gram_force



.. code-block:: ocaml

  val pound_force : float

pound_force



.. code-block:: ocaml

  val kilopound_force : float

kilopound_force



.. code-block:: ocaml

  val poundal : float

poundal



.. code-block:: ocaml

  val calorie : float

calorie



.. code-block:: ocaml

  val btu : float

btu



.. code-block:: ocaml

  val therm : float

therm



.. code-block:: ocaml

  val horsepower : float

horsepower



.. code-block:: ocaml

  val bar : float

bar



.. code-block:: ocaml

  val std_atmosphere : float

std_atmosphere



.. code-block:: ocaml

  val torr : float

torr



.. code-block:: ocaml

  val meter_of_mercury : float

meter_of_mercury



.. code-block:: ocaml

  val inch_of_mercury : float

inch_of_mercury



.. code-block:: ocaml

  val inch_of_water : float

inch_of_water



.. code-block:: ocaml

  val psi : float

psi



.. code-block:: ocaml

  val poise : float

poise



.. code-block:: ocaml

  val stokes : float

stokes



.. code-block:: ocaml

  val stilb : float

stilb



.. code-block:: ocaml

  val lumen : float

lumen



.. code-block:: ocaml

  val lux : float

lux



.. code-block:: ocaml

  val phot : float

phot



.. code-block:: ocaml

  val footcandle : float

footcandle



.. code-block:: ocaml

  val lambert : float

lambert



.. code-block:: ocaml

  val footlambert : float

footlambert



.. code-block:: ocaml

  val curie : float

curie



.. code-block:: ocaml

  val roentgen : float

roentgen



.. code-block:: ocaml

  val rad : float

rad



.. code-block:: ocaml

  val solar_mass : float

solar_mass



.. code-block:: ocaml

  val bohr_radius : float

bohr_radius



.. code-block:: ocaml

  val newton : float

newton



.. code-block:: ocaml

  val dyne : float

dyne



.. code-block:: ocaml

  val joule : float

joule



.. code-block:: ocaml

  val erg : float

erg



.. code-block:: ocaml

  val stefan_boltzmann_constant : float

stefan_boltzmann_constant



.. code-block:: ocaml

  val thomson_cross_section : float

thomson_cross_section



CGSM: Unit Systems in Electromagnetism
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val speed_of_light : float

speed_of_light



.. code-block:: ocaml

  val gravitational_constant : float

gravitational_constant



.. code-block:: ocaml

  val plancks_constant_h : float

plancks_constant_h



.. code-block:: ocaml

  val plancks_constant_hbar : float

plancks_constant_hbar



.. code-block:: ocaml

  val astronomical_unit : float

astronomical_unit



.. code-block:: ocaml

  val light_year : float

light_year



.. code-block:: ocaml

  val parsec : float

parsec



.. code-block:: ocaml

  val grav_accel : float

grav_accel



.. code-block:: ocaml

  val electron_volt : float

electron_volt



.. code-block:: ocaml

  val mass_electron : float

mass_electron



.. code-block:: ocaml

  val mass_muon : float

mass_muon



.. code-block:: ocaml

  val mass_proton : float

mass_proton



.. code-block:: ocaml

  val mass_neutron : float

mass_neutron



.. code-block:: ocaml

  val rydberg : float

rydberg



.. code-block:: ocaml

  val boltzmann : float

boltzmann



.. code-block:: ocaml

  val molar_gas : float

molar_gas



.. code-block:: ocaml

  val standard_gas_volume : float

standard_gas_volume



.. code-block:: ocaml

  val minute : float

minute



.. code-block:: ocaml

  val hour : float

hour



.. code-block:: ocaml

  val day : float

day



.. code-block:: ocaml

  val week : float

week



.. code-block:: ocaml

  val inch : float

inch



.. code-block:: ocaml

  val foot : float

foot



.. code-block:: ocaml

  val yard : float

yard



.. code-block:: ocaml

  val mile : float

mile



.. code-block:: ocaml

  val nautical_mile : float

nautical_mile



.. code-block:: ocaml

  val fathom : float

fathom



.. code-block:: ocaml

  val mil : float

mil



.. code-block:: ocaml

  val point : float

point



.. code-block:: ocaml

  val texpoint : float

texpoint



.. code-block:: ocaml

  val micron : float

micron



.. code-block:: ocaml

  val angstrom : float

angstrom



.. code-block:: ocaml

  val hectare : float

hectare



.. code-block:: ocaml

  val acre : float

acre



.. code-block:: ocaml

  val barn : float

barn



.. code-block:: ocaml

  val liter : float

liter



.. code-block:: ocaml

  val us_gallon : float

us_gallon



.. code-block:: ocaml

  val quart : float

quart



.. code-block:: ocaml

  val pint : float

pint



.. code-block:: ocaml

  val cup : float

cup



.. code-block:: ocaml

  val fluid_ounce : float

fluid_ounce



.. code-block:: ocaml

  val tablespoon : float

tablespoon



.. code-block:: ocaml

  val teaspoon : float

teaspoon



.. code-block:: ocaml

  val canadian_gallon : float

canadian_gallon



.. code-block:: ocaml

  val uk_gallon : float

uk_gallon



.. code-block:: ocaml

  val miles_per_hour : float

miles_per_hour



.. code-block:: ocaml

  val kilometers_per_hour : float

kilometers_per_hour



.. code-block:: ocaml

  val knot : float

knot



.. code-block:: ocaml

  val pound_mass : float

pound_mass



.. code-block:: ocaml

  val ounce_mass : float

ounce_mass



.. code-block:: ocaml

  val ton : float

ton



.. code-block:: ocaml

  val metric_ton : float

metric_ton



.. code-block:: ocaml

  val uk_ton : float

uk_ton



.. code-block:: ocaml

  val troy_ounce : float

troy_ounce



.. code-block:: ocaml

  val carat : float

carat



.. code-block:: ocaml

  val unified_atomic_mass : float

unified_atomic_mass



.. code-block:: ocaml

  val gram_force : float

gram_force



.. code-block:: ocaml

  val pound_force : float

pound_force



.. code-block:: ocaml

  val kilopound_force : float

kilopound_force



.. code-block:: ocaml

  val poundal : float

poundal



.. code-block:: ocaml

  val calorie : float

calorie



.. code-block:: ocaml

  val btu : float

btu



.. code-block:: ocaml

  val therm : float

therm



.. code-block:: ocaml

  val horsepower : float

horsepower



.. code-block:: ocaml

  val bar : float

bar



.. code-block:: ocaml

  val std_atmosphere : float

std_atmosphere



.. code-block:: ocaml

  val torr : float

torr



.. code-block:: ocaml

  val meter_of_mercury : float

meter_of_mercury



.. code-block:: ocaml

  val inch_of_mercury : float

inch_of_mercury



.. code-block:: ocaml

  val inch_of_water : float

inch_of_water



.. code-block:: ocaml

  val psi : float

psi



.. code-block:: ocaml

  val poise : float

poise



.. code-block:: ocaml

  val stokes : float

stokes



.. code-block:: ocaml

  val stilb : float

stilb



.. code-block:: ocaml

  val lumen : float

lumen



.. code-block:: ocaml

  val lux : float

lux



.. code-block:: ocaml

  val phot : float

phot



.. code-block:: ocaml

  val footcandle : float

footcandle



.. code-block:: ocaml

  val lambert : float

lambert



.. code-block:: ocaml

  val footlambert : float

footlambert



.. code-block:: ocaml

  val curie : float

curie



.. code-block:: ocaml

  val roentgen : float

roentgen



.. code-block:: ocaml

  val rad : float

rad



.. code-block:: ocaml

  val solar_mass : float

solar_mass



.. code-block:: ocaml

  val bohr_radius : float

bohr_radius



.. code-block:: ocaml

  val newton : float

newton



.. code-block:: ocaml

  val dyne : float

dyne



.. code-block:: ocaml

  val joule : float

joule



.. code-block:: ocaml

  val erg : float

erg



.. code-block:: ocaml

  val stefan_boltzmann_constant : float

stefan_boltzmann_constant



.. code-block:: ocaml

  val thomson_cross_section : float

thomson_cross_section



.. code-block:: ocaml

  val bohr_magneton : float

bohr_magneton



.. code-block:: ocaml

  val nuclear_magneton : float

nuclear_magneton



.. code-block:: ocaml

  val electron_magnetic_moment : float

electron_magnetic_moment



.. code-block:: ocaml

  val proton_magnetic_moment : float

proton_magnetic_moment



.. code-block:: ocaml

  val faraday : float

faraday



.. code-block:: ocaml

  val electron_charge : float

electron_charge



