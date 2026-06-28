---
title: Technology
---

# Technology: atmospheric-pressure xenon gas TPC

The current preferred detector concept is a time projection chamber (TPC) operating near atmospheric pressure, initially with xenon. The bet is simple: accept a larger volume in exchange for superior energy resolution, track-shape information for signal/background discrimination, simpler gas handling, and a detector that can be built and debugged by a small full-time team.

This is not a decorative technology choice. It is tied directly to the ZeroNu thesis. If $2\nu\beta\beta$ is the ultimate irreducible background, then energy resolution is the decisive handle. External backgrounds can be fought with shielding, radiopurity, topology, and depth. The $2\nu\beta\beta$ tail can only be fought by measuring energy well enough that it does not leak into the $0\nu\beta\beta$ region of interest.

:::commentary
**Why gas first**

Gas is not chosen because it is compact. It is chosen because it preserves information. A gas TPC can measure ionization with excellent intrinsic resolution and can retain event topology that dense liquid detectors mostly compress away.
:::

## The central trade

A 1 bar xenon detector is physically large. That is the visible cost. But the volume is not absurd. Ten tonnes of xenon gas at atmospheric pressure is an order of $2,000\,\mathrm{m^3}$, depending on temperature and gas composition. That is a major underground instrument, not a fantasy megastructure.

The payoff is that the detector avoids the most punishing complications of high-pressure gas and liquid xenon systems while keeping the key physics advantage of gas: resolution.

:::commentary
**What 10 tonnes means geometrically**

A volume near $2,000\,\mathrm{m^3}$ can be imagined as a cube about 12 to 13 meters on a side, or a cylindrical detector with dimensions in the range of existing underground experimental halls. The final geometry is an engineering problem, not a show-stopper by itself.
:::

## Why atmospheric pressure

High-pressure gas makes the detector smaller. It also introduces thick pressure boundaries, stored-energy hazards, more demanding seals, harder feedthroughs, more expensive vessels, and more material close to the active volume. Those are not secondary details in a rare-event experiment. They are background, schedule, safety, procurement, and QA risks.

At 1 bar, the vessel can be lighter, gas handling is more forgiving, and the experiment becomes easier to assemble, leak-check, service, and iterate. For a program built around fast feedback by a small team, that matters.

:::commentary
**Pressure is not free**

Reducing volume by increasing pressure can look attractive on paper. But pressure moves complexity into the vessel, seals, safety case, material budget, and long-term operations. ZeroNu should count total system complexity, not just active volume.
:::

## Why xenon

Xenon is the natural starting gas because $^{136}\mathrm{Xe}$ is a proven $0\nu\beta\beta$ isotope, can be enriched, and can be recovered. It also supports a mature body of detector knowledge from gaseous and liquid xenon programs.

The concept does not require pretending xenon is cheap or easy. It requires treating isotope procurement, storage, purification, recovery, and accounting as first-class engineering systems from the beginning.

:::commentary
**Initially xenon**

"Initially xenon" leaves room for the technical program to learn. The near-term argument is strongest for xenon because the isotope, Q-value, enrichment path, and detector literature are real. The platform should still be judged by measured performance, not loyalty to a material.
:::

## Why not liquid xenon as the default

Liquid xenon is compact and powerful. It is also much denser, and that density comes with a serious cost for this problem: energy resolution in large liquid detectors is not expected to match what a well-designed gas detector can achieve.

For many backgrounds, topology and shielding can help. For $2\nu\beta\beta$, topology does not distinguish the event class. It is the same isotope undergoing the allowed two-neutrino mode. The only way to prevent the high-energy tail from limiting the search is to narrow the energy window.

:::commentary
**The irreducible background**

$2\nu\beta\beta$ is not contamination. It is the source isotope doing the allowed decay. No material assay or external veto removes it. Energy resolution is the discriminant.
:::

## Why a TPC

A TPC gives a large active volume with three-dimensional event reconstruction. At low gas density, electron tracks are extended enough to contain topology: multiple-site gamma backgrounds, single-electron tracks, and candidate two-electron events do not look identical.

The TPC is therefore not only a calorimeter. It is a physics camera, a calibration system, a background diagnostic, and an operational monitor.

## Topology and machine learning

Track shape is the second major reason to choose gas. In a low-density xenon TPC, candidate events are not just energy deposits. They are extended three-dimensional objects. A true $0\nu\beta\beta$ candidate should look like two electrons emerging from a common vertex, with energy concentrated near track endpoints. Many backgrounds have different morphology: single-electron Compton tracks, multiple-site gamma interactions, surface events, alpha contamination, or events distorted by detector boundaries.

That information is exactly the kind of structured pattern-recognition problem where machine learning can help. ML can combine voxelized charge, topology, timing, detector position, diffusion information, and reconstruction-quality metrics into a discriminant that is difficult to express as a small set of hand-written cuts.

:::commentary
**Why this is gaseous-TPC territory**

Dense liquid detectors are powerful, but the tracks are short and topology is compressed. A low-density gas TPC gives the event enough spatial extent for track-shape discrimination to become a primary background-rejection tool.
:::

The ML program must be treated as detector physics, not magic. It needs calibration data, simulation validation, domain-shift tests, control samples, interpretable failure modes, and a frozen analysis protocol before unblinding. Done correctly, it turns the TPC into a topology engine as well as an energy spectrometer.

:::commentary
**Topology is not a substitute for resolution**

Topology, especially ML-assisted topology, helps suppress external and instrumental backgrounds. It does not solve the $2\nu\beta\beta$ tail. The technology choice has to win on both fronts: topology for external backgrounds, resolution for the irreducible one.
:::

## What must be proven

The concept is aggressive because it changes the scale and pressure regime. The technical paper under preparation must make the case quantitatively. The build program must then prove it experimentally.

Key questions:

- Can the energy resolution survive full detector scale, long drift, real electronics, and real calibration?
- Can diffusion, drift stability, attachment, and gas purity be controlled over the required dimensions?
- Can the readout cover the area economically while preserving topology and resolution?
- Can ML-based topology discrimination be trained, calibrated, validated, and frozen without introducing hidden analysis bias?
- Can radon, surface backgrounds, and vessel radioactivity be controlled at the needed level?
- Can xenon procurement, enrichment, storage, purification, and recovery be executed on the schedule?
- Can a large 1 bar detector be installed in a suitable underground hall with practical shielding and service access?

:::commentary
**The right standard**

The proposal should not win by sounding elegant. It should win by passing integrated demonstrations: resolution plus topology plus radiopurity plus stability in the same system.
:::

## Why this fits ZeroNu

The detector concept and organizational concept reinforce each other. A 1 bar gas TPC is large but mechanically direct. It rewards system-level ownership, rapid iteration, clean interfaces, and disciplined operations. It does not require a massive collaboration to negotiate every pressure boundary, cryogenic interface, and subsystem handoff.

That is the point. Choose the technology that best converts focused capital and full-time expertise into a decisive measurement.
