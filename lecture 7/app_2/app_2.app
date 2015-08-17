{application, app_2,
 [{description, "First application"},
  {vsn, "1.0"},
  {modules, [app_2_sup, app_2_child]}, % we've added our supervisor and clild here
  {registered, []},
  {applications, [kernel, stdlib]},
  {mod, {app_2,[]}}
 ]
}.
