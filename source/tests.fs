namespace demo.tests

open NUnit.Framework
open FsUnit

[<TestFixtureAttribute>]
type demoTests () =
  [<Test>] member x.
    DemoTest () =
      1
      |> should equal 1
