defmodule Templates.Engines.Calliope do
  @moduledoc """
  Calliope (HAML) template engine
  """

  @behaviour Templates.Engine

  ## Callbacks

  def compile(template) do
    { :ok, template }
  end

  def render(template, vars) do
    body = Calliope.render template.source, vars
    { :ok, body }
  end
end
