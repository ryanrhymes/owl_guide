Constants
===============================================================================

This document is auto-generated for Owl's APIs.
#440 entries have been extracted.
timestamp: 2018-03-22 23:03:10

Github:
`{Signature} <https://github.com/ryanrhymes/owl/tree/master/src/base/misc/owl_const.mli>`_ 
`{Implementation} <https://github.com/ryanrhymes/owl/tree/master/src/base/misc/owl_const.ml>`_



Maths constants
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val e : float

e = 2.718281828459045235360287471352662498

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_const.ml#L11>`__



.. code-block:: ocaml

  val euler : float

euler = 0.577215664901532860606512090082402431

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_const.ml#L13>`__



.. code-block:: ocaml

  val log2e : float

log2e = 1.442695040888963407359924681001892137

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_const.ml#L15>`__



.. code-block:: ocaml

  val log10e : float

log10e = 0.434294481903251827651128918916605082

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_const.ml#L17>`__



.. code-block:: ocaml

  val loge2 : float

loge2 = 0.693147180559945309417232121458176568

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_const.ml#L19>`__



.. code-block:: ocaml

  val loge10 : float

loge10 = 2.302585092994045684017991454684364208

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_const.ml#L21>`__



.. code-block:: ocaml

  val logepi : float

logepi = 1.144729885849400174143427351353058711

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_const.ml#L23>`__



.. code-block:: ocaml

  val sqrt1_2 : float

sqrt1_2 = 0.707106781186547524400844362104849039

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_const.ml#L25>`__



.. code-block:: ocaml

  val sqrt2 : float

sqrt2 = 1.414213562373095048801688724209698079

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_const.ml#L27>`__



.. code-block:: ocaml

  val sqrt3 : float

sqrt3 = 1.732050807568877293527446341505872366

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_const.ml#L29>`__



.. code-block:: ocaml

  val sqrtpi : float

sqrtpi = 1.772453850905516027298167483341145182

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_const.ml#L31>`__



.. code-block:: ocaml

  val pi : float

pi = 3.141592653589793238462643383279502884

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_const.ml#L33>`__



.. code-block:: ocaml

  val pi2 : float

pi2 = 6.283185307179586476925286766559005768

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_const.ml#L35>`__



.. code-block:: ocaml

  val pi4 : float

pi4 = 12.56637061435917295385057353311801153

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_const.ml#L37>`__



.. code-block:: ocaml

  val pi_2 : float

pi_2 = 1.570796326794896619231321691639751442

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_const.ml#L39>`__



.. code-block:: ocaml

  val pi_4 : float

pi_4 = 0.785398163397448309615660845819875721

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_const.ml#L41>`__



Constants depending on Bigarray kind
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val zero : ('a, 'b) Bigarray.kind -> 'a

``zero kind`` returns value zero of the given number type ``kind``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_const.ml#L46>`__



.. code-block:: ocaml

  val one : ('a, 'b) Bigarray.kind -> 'a

``one kind`` returns value one of the given number type ``kind``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_const.ml#L62>`__



.. code-block:: ocaml

  val neg_one : ('a, 'b) Bigarray.kind -> 'a

``neg_one kind`` returns negative one of the given number type ``kind``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_const.ml#L78>`__



.. code-block:: ocaml

  val pos_inf : ('a, 'b) Bigarray.kind -> 'a

``pos_inf kind`` returns positive infinity of the given number type ``kind``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_const.ml#L94>`__



.. code-block:: ocaml

  val neg_inf : ('a, 'b) Bigarray.kind -> 'a

``neg_inf kind`` returns negative infinity of the given number type ``kind``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_const.ml#L102>`__



Unit prefixes
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val fine_structure : float

fine_structure = 7.297352533e-3

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_const.ml#L114>`__



.. code-block:: ocaml

  val avogadro : float

avogadro = 6.02214199e23

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_const.ml#L116>`__



.. code-block:: ocaml

  val yotta : float

yotta = 1e24

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_const.ml#L118>`__



.. code-block:: ocaml

  val zetta : float

zetta = 1e21

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_const.ml#L120>`__



.. code-block:: ocaml

  val exa : float

exa = 1e18

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_const.ml#L122>`__



.. code-block:: ocaml

  val peta : float

peta = 1e15

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_const.ml#L124>`__



.. code-block:: ocaml

  val tera : float

tera = 1e12

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_const.ml#L126>`__



.. code-block:: ocaml

  val giga : float

giga = 1e9

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_const.ml#L128>`__



.. code-block:: ocaml

  val mega : float

mega = 1e6

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_const.ml#L130>`__



.. code-block:: ocaml

  val kilo : float

kilo = 1e3

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_const.ml#L132>`__



.. code-block:: ocaml

  val hecto : float

hecto = 1e2

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_const.ml#L134>`__



.. code-block:: ocaml

  val deca : float

deca = 1e1

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_const.ml#L136>`__



.. code-block:: ocaml

  val deci : float

deci = 1e-1

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_const.ml#L138>`__



.. code-block:: ocaml

  val centi : float

centi = 1e-2

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_const.ml#L140>`__



.. code-block:: ocaml

  val milli : float

milli = 1e-3

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_const.ml#L142>`__



.. code-block:: ocaml

  val micro : float

micro = 1e-6

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_const.ml#L144>`__



.. code-block:: ocaml

  val nano : float

nano = 1e-9

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_const.ml#L146>`__



.. code-block:: ocaml

  val pico : float

pico = 1e-12

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_const.ml#L148>`__



.. code-block:: ocaml

  val femto : float

femto = 1e-15

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_const.ml#L150>`__



.. code-block:: ocaml

  val atto : float

atto = 1e-18

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_const.ml#L152>`__



.. code-block:: ocaml

  val zepto : float

zepto = 1e-21

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_const.ml#L154>`__



.. code-block:: ocaml

  val yocto : float

yocto = 1e-24

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_const.ml#L156>`__



SI: International System of Units
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val speed_of_light : float

speed_of_light = 2.99792458e8

.. code-block:: ocaml

  val gravitational_constant : float

gravitational_constant = 6.673e-11

.. code-block:: ocaml

  val plancks_constant_h : float

plancks_constant_h = 6.62606896e-34

.. code-block:: ocaml

  val plancks_constant_hbar : float

plancks_constant_hbar = 1.05457162825e-34

.. code-block:: ocaml

  val astronomical_unit : float

astronomical_unit = 1.49597870691e11

.. code-block:: ocaml

  val light_year : float

light_year = 9.46053620707e15

.. code-block:: ocaml

  val parsec : float

parsec = 3.08567758135e16

.. code-block:: ocaml

  val grav_accel : float

grav_accel = 9.80665e0

.. code-block:: ocaml

  val electron_volt : float

electron_volt = 1.602176487e-19

.. code-block:: ocaml

  val mass_electron : float

mass_electron = 9.10938188e-31

.. code-block:: ocaml

  val mass_muon : float

mass_muon = 1.88353109e-28

.. code-block:: ocaml

  val mass_proton : float

mass_proton = 1.67262158e-27

.. code-block:: ocaml

  val mass_neutron : float

mass_neutron = 1.67492716e-27

.. code-block:: ocaml

  val rydberg : float

rydberg = 2.17987196968e-18

.. code-block:: ocaml

  val boltzmann : float

boltzmann = 1.3806504e-23

.. code-block:: ocaml

  val molar_gas : float

molar_gas = 8.314472e0

.. code-block:: ocaml

  val standard_gas_volume : float

standard_gas_volume = 2.2710981e-2

.. code-block:: ocaml

  val minute : float

minute = 6e1

.. code-block:: ocaml

  val hour : float

hour = 3.6e3

.. code-block:: ocaml

  val day : float

day = 8.64e4

.. code-block:: ocaml

  val week : float

week = 6.048e5

.. code-block:: ocaml

  val inch : float

inch = 2.54e-2

.. code-block:: ocaml

  val foot : float

foot = 3.048e-1

.. code-block:: ocaml

  val yard : float

yard = 9.144e-1

.. code-block:: ocaml

  val mile : float

mile = 1.609344e3

.. code-block:: ocaml

  val nautical_mile : float

nautical_mile = 1.852e3

.. code-block:: ocaml

  val fathom : float

fathom = 1.8288e0

.. code-block:: ocaml

  val mil : float

mil = 2.54e-5

.. code-block:: ocaml

  val point : float

point = 3.52777777778e-4

.. code-block:: ocaml

  val texpoint : float

texpoint = 3.51459803515e-4

.. code-block:: ocaml

  val micron : float

micron = 1e-6

.. code-block:: ocaml

  val angstrom : float

angstrom = 1e-10

.. code-block:: ocaml

  val hectare : float

hectare = 1e4

.. code-block:: ocaml

  val acre : float

acre = 4.04685642241e3

.. code-block:: ocaml

  val barn : float

barn = 1e-28

.. code-block:: ocaml

  val liter : float

liter = 1e-3

.. code-block:: ocaml

  val us_gallon : float

us_gallon = 3.78541178402e-3

.. code-block:: ocaml

  val quart : float

quart = 9.46352946004e-4

.. code-block:: ocaml

  val pint : float

pint = 4.73176473002e-4

.. code-block:: ocaml

  val cup : float

cup = 2.36588236501e-4

.. code-block:: ocaml

  val fluid_ounce : float

fluid_ounce = 2.95735295626e-5

.. code-block:: ocaml

  val tablespoon : float

tablespoon = 1.47867647813e-5

.. code-block:: ocaml

  val teaspoon : float

teaspoon = 4.92892159375e-6

.. code-block:: ocaml

  val canadian_gallon : float

canadian_gallon = 4.54609e-3

.. code-block:: ocaml

  val uk_gallon : float

uk_gallon = 4.546092e-3

.. code-block:: ocaml

  val miles_per_hour : float

miles_per_hour = 4.4704e-1

.. code-block:: ocaml

  val kilometers_per_hour : float

kilometers_per_hour = 2.77777777778e-1

.. code-block:: ocaml

  val knot : float

knot = 5.14444444444e-1

.. code-block:: ocaml

  val pound_mass : float

pound_mass = 4.5359237e-1

.. code-block:: ocaml

  val ounce_mass : float

ounce_mass = 2.8349523125e-2

.. code-block:: ocaml

  val ton : float

ton = 9.0718474e2

.. code-block:: ocaml

  val metric_ton : float

metric_ton = 1e3

.. code-block:: ocaml

  val uk_ton : float

uk_ton = 1.0160469088e3

.. code-block:: ocaml

  val troy_ounce : float

troy_ounce = 3.1103475e-2

.. code-block:: ocaml

  val carat : float

carat = 2e-4

.. code-block:: ocaml

  val unified_atomic_mass : float

unified_atomic_mass = 1.660538782e-27

.. code-block:: ocaml

  val gram_force : float

gram_force = 9.80665e-3

.. code-block:: ocaml

  val pound_force : float

pound_force = 4.44822161526e0

.. code-block:: ocaml

  val kilopound_force : float

kilopound_force = 4.44822161526e3

.. code-block:: ocaml

  val poundal : float

poundal = 1.38255e-1

.. code-block:: ocaml

  val calorie : float

calorie = 4.1868e0

.. code-block:: ocaml

  val btu : float

btu = 1.05505585262e3

.. code-block:: ocaml

  val therm : float

therm = 1.05506e8

.. code-block:: ocaml

  val horsepower : float

horsepower = 7.457e2

.. code-block:: ocaml

  val bar : float

bar = 1e5

.. code-block:: ocaml

  val std_atmosphere : float

std_atmosphere = 1.01325e5

.. code-block:: ocaml

  val torr : float

torr = 1.33322368421e2

.. code-block:: ocaml

  val meter_of_mercury : float

meter_of_mercury = 1.33322368421e5

.. code-block:: ocaml

  val inch_of_mercury : float

inch_of_mercury = 3.38638815789e3

.. code-block:: ocaml

  val inch_of_water : float

inch_of_water = 2.490889e2

.. code-block:: ocaml

  val psi : float

psi = 6.89475729317e3

.. code-block:: ocaml

  val poise : float

poise = 1e-1

.. code-block:: ocaml

  val stokes : float

stokes = 1e-4

.. code-block:: ocaml

  val stilb : float

stilb = 1e4

.. code-block:: ocaml

  val lumen : float

lumen = 1e0

.. code-block:: ocaml

  val lux : float

lux = 1e0

.. code-block:: ocaml

  val phot : float

phot = 1e4

.. code-block:: ocaml

  val footcandle : float

footcandle = 1.076e1

.. code-block:: ocaml

  val lambert : float

lambert = 1e4

.. code-block:: ocaml

  val footlambert : float

footlambert = 1.07639104e1

.. code-block:: ocaml

  val curie : float

curie = 3.7e10

.. code-block:: ocaml

  val roentgen : float

roentgen = 2.58e-4

.. code-block:: ocaml

  val rad : float

rad = 1e-2

.. code-block:: ocaml

  val solar_mass : float

solar_mass = 1.98892e30

.. code-block:: ocaml

  val bohr_radius : float

bohr_radius = 5.291772083e-11

.. code-block:: ocaml

  val newton : float

newton = 1e0

.. code-block:: ocaml

  val dyne : float

dyne = 1e-5

.. code-block:: ocaml

  val joule : float

joule = 1e0

.. code-block:: ocaml

  val erg : float

erg = 1e-7

.. code-block:: ocaml

  val stefan_boltzmann_constant : float

stefan_boltzmann_constant = 5.67040047374e-8

.. code-block:: ocaml

  val thomson_cross_section : float

thomson_cross_section = 6.65245893699e-29

.. code-block:: ocaml

  val bohr_magneton : float

bohr_magneton = 9.27400899e-24

.. code-block:: ocaml

  val nuclear_magneton : float

nuclear_magneton = 5.05078317e-27

.. code-block:: ocaml

  val electron_magnetic_moment : float

electron_magnetic_moment = 9.28476362e-24

.. code-block:: ocaml

  val proton_magnetic_moment : float

proton_magnetic_moment = 1.410606633e-26

.. code-block:: ocaml

  val faraday : float

faraday = 9.64853429775e4

.. code-block:: ocaml

  val electron_charge : float

electron_charge = 1.602176487e-19

.. code-block:: ocaml

  val vacuum_permittivity : float

vacuum_permittivity = 8.854187817e-12

.. code-block:: ocaml

  val vacuum_permeability : float

vacuum_permeability = 1.25663706144e-6

.. code-block:: ocaml

  val debye : float

debye = 3.33564095198e-30

.. code-block:: ocaml

  val gauss : float

gauss = 1e-4

MKS: MKS system of units
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val speed_of_light : float

speed_of_light = 2.99792458e8

.. code-block:: ocaml

  val gravitational_constant : float

gravitational_constant = 6.673e-11

.. code-block:: ocaml

  val plancks_constant_h : float

plancks_constant_h = 6.62606896e-34

.. code-block:: ocaml

  val plancks_constant_hbar : float

plancks_constant_hbar = 1.05457162825e-34

.. code-block:: ocaml

  val astronomical_unit : float

astronomical_unit = 1.49597870691e11

.. code-block:: ocaml

  val light_year : float

light_year = 9.46053620707e15

.. code-block:: ocaml

  val parsec : float

parsec = 3.08567758135e16

.. code-block:: ocaml

  val grav_accel : float

grav_accel = 9.80665e0

.. code-block:: ocaml

  val electron_volt : float

electron_volt = 1.602176487e-19

.. code-block:: ocaml

  val mass_electron : float

mass_electron = 9.10938188e-31

.. code-block:: ocaml

  val mass_muon : float

mass_muon = 1.88353109e-28

.. code-block:: ocaml

  val mass_proton : float

mass_proton = 1.67262158e-27

.. code-block:: ocaml

  val mass_neutron : float

mass_neutron = 1.67492716e-27

.. code-block:: ocaml

  val rydberg : float

rydberg = 2.17987196968e-18

.. code-block:: ocaml

  val boltzmann : float

boltzmann = 1.3806504e-23

.. code-block:: ocaml

  val molar_gas : float

molar_gas = 8.314472e0

.. code-block:: ocaml

  val standard_gas_volume : float

standard_gas_volume = 2.2710981e-2

.. code-block:: ocaml

  val minute : float

minute = 6e1

.. code-block:: ocaml

  val hour : float

hour = 3.6e3

.. code-block:: ocaml

  val day : float

day = 8.64e4

.. code-block:: ocaml

  val week : float

week = 6.048e5

.. code-block:: ocaml

  val inch : float

inch = 2.54e-2

.. code-block:: ocaml

  val foot : float

foot = 3.048e-1

.. code-block:: ocaml

  val yard : float

yard = 9.144e-1

.. code-block:: ocaml

  val mile : float

mile = 1.609344e3

.. code-block:: ocaml

  val nautical_mile : float

nautical_mile = 1.852e3

.. code-block:: ocaml

  val fathom : float

fathom = 1.8288e0

.. code-block:: ocaml

  val mil : float

mil = 2.54e-5

.. code-block:: ocaml

  val point : float

point = 3.52777777778e-4

.. code-block:: ocaml

  val texpoint : float

texpoint = 3.51459803515e-4

.. code-block:: ocaml

  val micron : float

micron = 1e-6

.. code-block:: ocaml

  val angstrom : float

angstrom = 1e-10

.. code-block:: ocaml

  val hectare : float

hectare = 1e4

.. code-block:: ocaml

  val acre : float

acre = 4.04685642241e3

.. code-block:: ocaml

  val barn : float

barn = 1e-28

.. code-block:: ocaml

  val liter : float

liter = 1e-3

.. code-block:: ocaml

  val us_gallon : float

us_gallon = 3.78541178402e-3

.. code-block:: ocaml

  val quart : float

quart = 9.46352946004e-4

.. code-block:: ocaml

  val pint : float

pint = 4.73176473002e-4

.. code-block:: ocaml

  val cup : float

cup = 2.36588236501e-4

.. code-block:: ocaml

  val fluid_ounce : float

fluid_ounce = 2.95735295626e-5

.. code-block:: ocaml

  val tablespoon : float

tablespoon = 1.47867647813e-5

.. code-block:: ocaml

  val teaspoon : float

teaspoon = 4.92892159375e-6

.. code-block:: ocaml

  val canadian_gallon : float

canadian_gallon = 4.54609e-3

.. code-block:: ocaml

  val uk_gallon : float

uk_gallon = 4.546092e-3

.. code-block:: ocaml

  val miles_per_hour : float

miles_per_hour = 4.4704e-1

.. code-block:: ocaml

  val kilometers_per_hour : float

kilometers_per_hour = 2.77777777778e-1

.. code-block:: ocaml

  val knot : float

knot = 5.14444444444e-1

.. code-block:: ocaml

  val pound_mass : float

pound_mass = 4.5359237e-1

.. code-block:: ocaml

  val ounce_mass : float

ounce_mass = 2.8349523125e-2

.. code-block:: ocaml

  val ton : float

ton = 9.0718474e2

.. code-block:: ocaml

  val metric_ton : float

metric_ton = 1e3

.. code-block:: ocaml

  val uk_ton : float

uk_ton = 1.0160469088e3

.. code-block:: ocaml

  val troy_ounce : float

troy_ounce = 3.1103475e-2

.. code-block:: ocaml

  val carat : float

carat = 2e-4

.. code-block:: ocaml

  val unified_atomic_mass : float

unified_atomic_mass = 1.660538782e-27

.. code-block:: ocaml

  val gram_force : float

gram_force = 9.80665e-3

.. code-block:: ocaml

  val pound_force : float

pound_force = 4.44822161526e0

.. code-block:: ocaml

  val kilopound_force : float

kilopound_force = 4.44822161526e3

.. code-block:: ocaml

  val poundal : float

poundal = 1.38255e-1

.. code-block:: ocaml

  val calorie : float

calorie = 4.1868e0

.. code-block:: ocaml

  val btu : float

btu = 1.05505585262e3

.. code-block:: ocaml

  val therm : float

therm = 1.05506e8

.. code-block:: ocaml

  val horsepower : float

horsepower = 7.457e2

.. code-block:: ocaml

  val bar : float

bar = 1e5

.. code-block:: ocaml

  val std_atmosphere : float

std_atmosphere = 1.01325e5

.. code-block:: ocaml

  val torr : float

torr = 1.33322368421e2

.. code-block:: ocaml

  val meter_of_mercury : float

meter_of_mercury = 1.33322368421e5

.. code-block:: ocaml

  val inch_of_mercury : float

inch_of_mercury = 3.38638815789e3

.. code-block:: ocaml

  val inch_of_water : float

inch_of_water = 2.490889e2

.. code-block:: ocaml

  val psi : float

psi = 6.89475729317e3

.. code-block:: ocaml

  val poise : float

poise = 1e-1

.. code-block:: ocaml

  val stokes : float

stokes = 1e-4

.. code-block:: ocaml

  val stilb : float

stilb = 1e4

.. code-block:: ocaml

  val lumen : float

lumen = 1e0

.. code-block:: ocaml

  val lux : float

lux = 1e0

.. code-block:: ocaml

  val phot : float

phot = 1e4

.. code-block:: ocaml

  val footcandle : float

footcandle = 1.076e1

.. code-block:: ocaml

  val lambert : float

lambert = 1e4

.. code-block:: ocaml

  val footlambert : float

footlambert = 1.07639104e1

.. code-block:: ocaml

  val curie : float

curie = 3.7e10

.. code-block:: ocaml

  val roentgen : float

roentgen = 2.58e-4

.. code-block:: ocaml

  val rad : float

rad = 1e-2

.. code-block:: ocaml

  val solar_mass : float

solar_mass = 1.98892e30

.. code-block:: ocaml

  val bohr_radius : float

bohr_radius = 5.291772083e-11

.. code-block:: ocaml

  val newton : float

newton = 1e0

.. code-block:: ocaml

  val dyne : float

dyne = 1e-5

.. code-block:: ocaml

  val joule : float

joule = 1e0

.. code-block:: ocaml

  val erg : float

erg = 1e-7

.. code-block:: ocaml

  val stefan_boltzmann_constant : float

stefan_boltzmann_constant = 5.67040047374e-8

.. code-block:: ocaml

  val thomson_cross_section : float

thomson_cross_section = 6.65245893699e-29

.. code-block:: ocaml

  val bohr_magneton : float

bohr_magneton = 9.27400899e-24

.. code-block:: ocaml

  val nuclear_magneton : float

nuclear_magneton = 5.05078317e-27

.. code-block:: ocaml

  val electron_magnetic_moment : float

electron_magnetic_moment = 9.28476362e-24

.. code-block:: ocaml

  val proton_magnetic_moment : float

proton_magnetic_moment = 1.410606633e-26

.. code-block:: ocaml

  val faraday : float

faraday = 9.64853429775e4

.. code-block:: ocaml

  val electron_charge : float

electron_charge = 1.602176487e-19

.. code-block:: ocaml

  val vacuum_permittivity : float

vacuum_permittivity = 8.854187817e-12

.. code-block:: ocaml

  val vacuum_permeability : float

vacuum_permeability = 1.25663706144e-6

.. code-block:: ocaml

  val debye : float

debye = 3.33564095198e-30

.. code-block:: ocaml

  val gauss : float

gauss = 1e-4

CGS: Centimetre–gram–second system of units
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val speed_of_light : float

speed_of_light = 2.99792458e10

.. code-block:: ocaml

  val gravitational_constant : float

gravitational_constant = 6.673e-8

.. code-block:: ocaml

  val plancks_constant_h : float

plancks_constant_h = 6.62606896e-27

.. code-block:: ocaml

  val plancks_constant_hbar : float

plancks_constant_hbar = 1.05457162825e-27

.. code-block:: ocaml

  val astronomical_unit : float

astronomical_unit = 1.49597870691e13

.. code-block:: ocaml

  val light_year : float

light_year = 9.46053620707e17

.. code-block:: ocaml

  val parsec : float

parsec = 3.08567758135e18

.. code-block:: ocaml

  val grav_accel : float

grav_accel = 9.80665e2

.. code-block:: ocaml

  val electron_volt : float

electron_volt = 1.602176487e-12

.. code-block:: ocaml

  val mass_electron : float

mass_electron = 9.10938188e-28

.. code-block:: ocaml

  val mass_muon : float

mass_muon = 1.88353109e-25

.. code-block:: ocaml

  val mass_proton : float

mass_proton = 1.67262158e-24

.. code-block:: ocaml

  val mass_neutron : float

mass_neutron = 1.67492716e-24

.. code-block:: ocaml

  val rydberg : float

rydberg = 2.17987196968e-11

.. code-block:: ocaml

  val boltzmann : float

boltzmann = 1.3806504e-16

.. code-block:: ocaml

  val molar_gas : float

molar_gas = 8.314472e7

.. code-block:: ocaml

  val standard_gas_volume : float

standard_gas_volume = 2.2710981e4

.. code-block:: ocaml

  val minute : float

minute = 6e1

.. code-block:: ocaml

  val hour : float

hour = 3.6e3

.. code-block:: ocaml

  val day : float

day = 8.64e4

.. code-block:: ocaml

  val week : float

week = 6.048e5

.. code-block:: ocaml

  val inch : float

inch = 2.54e0

.. code-block:: ocaml

  val foot : float

foot = 3.048e1

.. code-block:: ocaml

  val yard : float

yard = 9.144e1

.. code-block:: ocaml

  val mile : float

mile = 1.609344e5

.. code-block:: ocaml

  val nautical_mile : float

nautical_mile = 1.852e5

.. code-block:: ocaml

  val fathom : float

fathom = 1.8288e2

.. code-block:: ocaml

  val mil : float

mil = 2.54e-3

.. code-block:: ocaml

  val point : float

point = 3.52777777778e-2

.. code-block:: ocaml

  val texpoint : float

texpoint = 3.51459803515e-2

.. code-block:: ocaml

  val micron : float

micron = 1e-4

.. code-block:: ocaml

  val angstrom : float

angstrom = 1e-8

.. code-block:: ocaml

  val hectare : float

hectare = 1e8

.. code-block:: ocaml

  val acre : float

acre = 4.04685642241e7

.. code-block:: ocaml

  val barn : float

barn = 1e-24

.. code-block:: ocaml

  val liter : float

liter = 1e3

.. code-block:: ocaml

  val us_gallon : float

us_gallon = 3.78541178402e3

.. code-block:: ocaml

  val quart : float

quart = 9.46352946004e2

.. code-block:: ocaml

  val pint : float

pint = 4.73176473002e2

.. code-block:: ocaml

  val cup : float

cup = 2.36588236501e2

.. code-block:: ocaml

  val fluid_ounce : float

fluid_ounce = 2.95735295626e1

.. code-block:: ocaml

  val tablespoon : float

tablespoon = 1.47867647813e1

.. code-block:: ocaml

  val teaspoon : float

teaspoon = 4.92892159375e0

.. code-block:: ocaml

  val canadian_gallon : float

canadian_gallon = 4.54609e3

.. code-block:: ocaml

  val uk_gallon : float

uk_gallon = 4.546092e3

.. code-block:: ocaml

  val miles_per_hour : float

miles_per_hour = 4.4704e1

.. code-block:: ocaml

  val kilometers_per_hour : float

kilometers_per_hour = 2.77777777778e1

.. code-block:: ocaml

  val knot : float

knot = 5.14444444444e1

.. code-block:: ocaml

  val pound_mass : float

pound_mass = 4.5359237e2

.. code-block:: ocaml

  val ounce_mass : float

ounce_mass = 2.8349523125e1

.. code-block:: ocaml

  val ton : float

ton = 9.0718474e5

.. code-block:: ocaml

  val metric_ton : float

metric_ton = 1e6

.. code-block:: ocaml

  val uk_ton : float

uk_ton = 1.0160469088e6

.. code-block:: ocaml

  val troy_ounce : float

troy_ounce = 3.1103475e1

.. code-block:: ocaml

  val carat : float

carat = 2e-1

.. code-block:: ocaml

  val unified_atomic_mass : float

unified_atomic_mass = 1.660538782e-24

.. code-block:: ocaml

  val gram_force : float

gram_force = 9.80665e2

.. code-block:: ocaml

  val pound_force : float

pound_force = 4.44822161526e5

.. code-block:: ocaml

  val kilopound_force : float

kilopound_force = 4.44822161526e8

.. code-block:: ocaml

  val poundal : float

poundal = 1.38255e4

.. code-block:: ocaml

  val calorie : float

calorie = 4.1868e7

.. code-block:: ocaml

  val btu : float

btu = 1.05505585262e10

.. code-block:: ocaml

  val therm : float

therm = 1.05506e15

.. code-block:: ocaml

  val horsepower : float

horsepower = 7.457e9

.. code-block:: ocaml

  val bar : float

bar = 1e6

.. code-block:: ocaml

  val std_atmosphere : float

std_atmosphere = 1.01325e6

.. code-block:: ocaml

  val torr : float

torr = 1.33322368421e3

.. code-block:: ocaml

  val meter_of_mercury : float

meter_of_mercury = 1.33322368421e6

.. code-block:: ocaml

  val inch_of_mercury : float

inch_of_mercury = 3.38638815789e4

.. code-block:: ocaml

  val inch_of_water : float

inch_of_water = 2.490889e3

.. code-block:: ocaml

  val psi : float

psi = 6.89475729317e4

.. code-block:: ocaml

  val poise : float

poise = 1e0

.. code-block:: ocaml

  val stokes : float

stokes = 1e0

.. code-block:: ocaml

  val stilb : float

stilb = 1e0

.. code-block:: ocaml

  val lumen : float

lumen = 1e0

.. code-block:: ocaml

  val lux : float

lux = 1e-4

.. code-block:: ocaml

  val phot : float

phot = 1e0

.. code-block:: ocaml

  val footcandle : float

footcandle = 1.076e-3

.. code-block:: ocaml

  val lambert : float

lambert = 1e0

.. code-block:: ocaml

  val footlambert : float

footlambert = 1.07639104e-3

.. code-block:: ocaml

  val curie : float

curie = 3.7e10

.. code-block:: ocaml

  val roentgen : float

roentgen = 2.58e-7

.. code-block:: ocaml

  val rad : float

rad = 1e2

.. code-block:: ocaml

  val solar_mass : float

solar_mass = 1.98892e33

.. code-block:: ocaml

  val bohr_radius : float

bohr_radius = 5.291772083e-9

.. code-block:: ocaml

  val newton : float

newton = 1e5

.. code-block:: ocaml

  val dyne : float

dyne = 1e0

.. code-block:: ocaml

  val joule : float

joule = 1e7

.. code-block:: ocaml

  val erg : float

erg = 1e0

.. code-block:: ocaml

  val stefan_boltzmann_constant : float

stefan_boltzmann_constant = 5.67040047374e-5

.. code-block:: ocaml

  val thomson_cross_section : float

thomson_cross_section = 6.65245893699e-25

CGSM: Unit Systems in Electromagnetism
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val speed_of_light : float

speed_of_light = 2.99792458e10

.. code-block:: ocaml

  val gravitational_constant : float

gravitational_constant = 6.673e-8

.. code-block:: ocaml

  val plancks_constant_h : float

plancks_constant_h = 6.62606896e-27

.. code-block:: ocaml

  val plancks_constant_hbar : float

plancks_constant_hbar = 1.05457162825e-27

.. code-block:: ocaml

  val astronomical_unit : float

astronomical_unit = 1.49597870691e13

.. code-block:: ocaml

  val light_year : float

light_year = 9.46053620707e17

.. code-block:: ocaml

  val parsec : float

parsec = 3.08567758135e18

.. code-block:: ocaml

  val grav_accel : float

grav_accel = 9.80665e2

.. code-block:: ocaml

  val electron_volt : float

electron_volt = 1.602176487e-12

.. code-block:: ocaml

  val mass_electron : float

mass_electron = 9.10938188e-28

.. code-block:: ocaml

  val mass_muon : float

mass_muon = 1.88353109e-25

.. code-block:: ocaml

  val mass_proton : float

mass_proton = 1.67262158e-24

.. code-block:: ocaml

  val mass_neutron : float

mass_neutron = 1.67492716e-24

.. code-block:: ocaml

  val rydberg : float

rydberg = 2.17987196968e-11

.. code-block:: ocaml

  val boltzmann : float

boltzmann = 1.3806504e-16

.. code-block:: ocaml

  val molar_gas : float

molar_gas = 8.314472e7

.. code-block:: ocaml

  val standard_gas_volume : float

standard_gas_volume = 2.2710981e4

.. code-block:: ocaml

  val minute : float

minute = 6e1

.. code-block:: ocaml

  val hour : float

hour = 3.6e3

.. code-block:: ocaml

  val day : float

day = 8.64e4

.. code-block:: ocaml

  val week : float

week = 6.048e5

.. code-block:: ocaml

  val inch : float

inch = 2.54e0

.. code-block:: ocaml

  val foot : float

foot = 3.048e1

.. code-block:: ocaml

  val yard : float

yard = 9.144e1

.. code-block:: ocaml

  val mile : float

mile = 1.609344e5

.. code-block:: ocaml

  val nautical_mile : float

nautical_mile = 1.852e5

.. code-block:: ocaml

  val fathom : float

fathom = 1.8288e2

.. code-block:: ocaml

  val mil : float

mil = 2.54e-3

.. code-block:: ocaml

  val point : float

point = 3.52777777778e-2

.. code-block:: ocaml

  val texpoint : float

texpoint = 3.51459803515e-2

.. code-block:: ocaml

  val micron : float

micron = 1e-4

.. code-block:: ocaml

  val angstrom : float

angstrom = 1e-8

.. code-block:: ocaml

  val hectare : float

hectare = 1e8

.. code-block:: ocaml

  val acre : float

acre = 4.04685642241e7

.. code-block:: ocaml

  val barn : float

barn = 1e-24

.. code-block:: ocaml

  val liter : float

liter = 1e3

.. code-block:: ocaml

  val us_gallon : float

us_gallon = 3.78541178402e3

.. code-block:: ocaml

  val quart : float

quart = 9.46352946004e2

.. code-block:: ocaml

  val pint : float

pint = 4.73176473002e2

.. code-block:: ocaml

  val cup : float

cup = 2.36588236501e2

.. code-block:: ocaml

  val fluid_ounce : float

fluid_ounce = 2.95735295626e1

.. code-block:: ocaml

  val tablespoon : float

tablespoon = 1.47867647813e1

.. code-block:: ocaml

  val teaspoon : float

teaspoon = 4.92892159375e0

.. code-block:: ocaml

  val canadian_gallon : float

canadian_gallon = 4.54609e3

.. code-block:: ocaml

  val uk_gallon : float

uk_gallon = 4.546092e3

.. code-block:: ocaml

  val miles_per_hour : float

miles_per_hour = 4.4704e1

.. code-block:: ocaml

  val kilometers_per_hour : float

kilometers_per_hour = 2.77777777778e1

.. code-block:: ocaml

  val knot : float

knot = 5.14444444444e1

.. code-block:: ocaml

  val pound_mass : float

pound_mass = 4.5359237e2

.. code-block:: ocaml

  val ounce_mass : float

ounce_mass = 2.8349523125e1

.. code-block:: ocaml

  val ton : float

ton = 9.0718474e5

.. code-block:: ocaml

  val metric_ton : float

metric_ton = 1e6

.. code-block:: ocaml

  val uk_ton : float

uk_ton = 1.0160469088e6

.. code-block:: ocaml

  val troy_ounce : float

troy_ounce = 3.1103475e1

.. code-block:: ocaml

  val carat : float

carat = 2e-1

.. code-block:: ocaml

  val unified_atomic_mass : float

unified_atomic_mass = 1.660538782e-24

.. code-block:: ocaml

  val gram_force : float

gram_force = 9.80665e2

.. code-block:: ocaml

  val pound_force : float

pound_force = 4.44822161526e5

.. code-block:: ocaml

  val kilopound_force : float

kilopound_force = 4.44822161526e8

.. code-block:: ocaml

  val poundal : float

poundal = 1.38255e4

.. code-block:: ocaml

  val calorie : float

calorie = 4.1868e7

.. code-block:: ocaml

  val btu : float

btu = 1.05505585262e10

.. code-block:: ocaml

  val therm : float

therm = 1.05506e15

.. code-block:: ocaml

  val horsepower : float

horsepower = 7.457e9

.. code-block:: ocaml

  val bar : float

bar = 1e6

.. code-block:: ocaml

  val std_atmosphere : float

std_atmosphere = 1.01325e6

.. code-block:: ocaml

  val torr : float

torr = 1.33322368421e3

.. code-block:: ocaml

  val meter_of_mercury : float

meter_of_mercury = 1.33322368421e6

.. code-block:: ocaml

  val inch_of_mercury : float

inch_of_mercury = 3.38638815789e4

.. code-block:: ocaml

  val inch_of_water : float

inch_of_water = 2.490889e3

.. code-block:: ocaml

  val psi : float

psi = 6.89475729317e4

.. code-block:: ocaml

  val poise : float

poise = 1e0

.. code-block:: ocaml

  val stokes : float

stokes = 1e0

.. code-block:: ocaml

  val stilb : float

stilb = 1e0

.. code-block:: ocaml

  val lumen : float

lumen = 1e0

.. code-block:: ocaml

  val lux : float

lux = 1e-4

.. code-block:: ocaml

  val phot : float

phot = 1e0

.. code-block:: ocaml

  val footcandle : float

footcandle = 1.076e-3

.. code-block:: ocaml

  val lambert : float

lambert = 1e0

.. code-block:: ocaml

  val footlambert : float

footlambert = 1.07639104e-3

.. code-block:: ocaml

  val curie : float

curie = 3.7e10

.. code-block:: ocaml

  val roentgen : float

roentgen = 2.58e-8

.. code-block:: ocaml

  val rad : float

rad = 1e2

.. code-block:: ocaml

  val solar_mass : float

solar_mass = 1.98892e33

.. code-block:: ocaml

  val bohr_radius : float

bohr_radius = 5.291772083e-9

.. code-block:: ocaml

  val newton : float

newton = 1e5

.. code-block:: ocaml

  val dyne : float

dyne = 1e0

.. code-block:: ocaml

  val joule : float

joule = 1e7

.. code-block:: ocaml

  val erg : float

erg = 1e0

.. code-block:: ocaml

  val stefan_boltzmann_constant : float

stefan_boltzmann_constant = 5.67040047374e-5

.. code-block:: ocaml

  val thomson_cross_section : float

thomson_cross_section = 6.65245893699e-25

.. code-block:: ocaml

  val bohr_magneton : float

bohr_magneton = 9.27400899e-21

.. code-block:: ocaml

  val nuclear_magneton : float

nuclear_magneton = 5.05078317e-24

.. code-block:: ocaml

  val electron_magnetic_moment : float

electron_magnetic_moment = 9.28476362e-21

.. code-block:: ocaml

  val proton_magnetic_moment : float

proton_magnetic_moment = 1.410606633e-23

.. code-block:: ocaml

  val faraday : float

faraday = 9.64853429775e3

.. code-block:: ocaml

  val electron_charge : float

electron_charge = 1.602176487e-20

