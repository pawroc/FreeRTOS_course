# Notatki

## 001_Priorities_equal_preemptive_scheduler

Z racji, że priorytety zadań są równe, scheduler będzie przełączał pomiędzy zadaniami z każdym cyklem zegara.

## 001_Priorities_not_equal_cooperative_scheduler_taskYIELD_from_higher_prio / 001_Priorities_not_equal_cooperative_scheduler_taskYIELD

Utykamy na przetwarzaniu zadania o wyższym priorytecie - `taskYIELD` nie powoduje wywołania zadania o niższym priorytecie.

## 001_Priorities_not_equal_preemptive_scheduler_taskYIELD_from_higher_prio / 003_Priorities_not_equal_cooperative_scheduler_taskYIELD

Utykamy na przetwarzaniu zadania o wyższym priorytecie - `taskYIELD` nie powoduje wywołania zadania o niższym priorytecie.

## 001_Priorities_not_equal_preemptive_scheduler

Z racji tego, że priorytety nie są równe, scheduler nie wywoała zadania z niższym priorytetem dopóki zadanie z wyższym priorytetem nie zostanie zablokowane.

## 002_Priorities_equal_preemptive_scheduler_task_yield

Z racji tego, że pojawia się `taskYIELD`, przełączanie pomiędzy zadaniami będzie się odbywało przy każdym wystąpieniu `taskYIELD` oraz przy wywołaniu schedulera (bo pracuje w trybie preemptive).

## 003_Priorities_equal_cooperative_scheduler_task_yield

Z racji tego, że scheduler pracuje w trybie cooperative, przełączanie zadań będzie się odbywać tylko w przypadku wystąpienia `taskYIELD` (scheduler nie będzie wywoływany w ogóle).


## Przełączanie pomiędzy zadaniami z różnymi priorytetami

[Źródło](https://www.freertos.org/single-core-amp-smp-rtos-scheduling.html)

Scheduler zawsze wybierze zadanie o najwyższym priorytecie, który jest w stanie __READY__.
Dlatego, w przypadku pracy z zadaniami o różnych priorytetach, należy zadanie o wyższym priorytecie
wprowadzić w stan __BLOCKED / SUSPENDED__, aby scheduler mógł uruchomić zadanie o niższym priorytecie.
W przeciwnym razie, dojdzie do __zagłodzenia zadań o niższym priorytecie (TASK STARVATION)__.

## Przełączanie pomiędzy zadaniami o tych samych priorytetach

Zachodzi tutaj __round robin__, czyli zadania są przełączane z każdym tickiem RTOS "każde po kolei",
czyli jeśli są 3 zadania, będą one uruchamiane kolejno: _1, 2, 3, 1, 2, 3..._.

## Preemptive scheduler

### Przełączanie pomiędzy zadaniami o tym samym priorytecie

- co cykl zegara RTOS
- przy wywołaniu `taskYIELD`
- jak zadanie z wyższym priorytetem zostanie zablokowane

### Przełączanie pomiędzy zadaniami o tym innym priorytecie

- jak zadanie z wyższym priorytetem zostanie zablokowane

__UWAGA__: Z jakiegoś powodu `taskYIELD` nie pozwala na przełączenie się między zadaniami.

## Cooperative scheduler

### Przełączanie pomiędzy zadaniami o tym samym priorytecie

- przy wywołaniu `taskYIELD`
- jak zadanie z wyższym priorytetem zostanie zablokowane

### Przełączanie pomiędzy zadaniami o tym innym priorytecie

- jak zadanie z wyższym priorytetem zostanie zablokowane

__UWAGA__: Z jakiegoś powodu `taskYIELD` nie pozwala na przełączenie się między zadaniami.