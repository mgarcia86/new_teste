# frozen_string_literal: true

require 'report_builder'

Before do |_scenario|
  @login = LoginPage.new
  @esqueceu_sua_senha = EsqueceuSuaSenhaPage.new
end

After do |scenario|
  time = Time.new
  nome = scenario.name.tr(' ', '-').downcase!
  result = ('falha' if scenario.failed?) || 'sucesso'
  path = "report/screenshot/#{result}-#{nome.gsub(/[""?]/, '')}#{time.day}-#{time.month}-#{time.year}.png"
  # $driver.screenshot(path)
  # embed(path, 'image/png', 'evidencias')
end

at_exit do
  ReportBuilder.input_path = 'report/json/report.json'
  ReportBuilder.report_path = 'report/html/report'
  ReportBuilder.color = 'green'
  ReportBuilder.configure do |config|
    config.report_types = [:json, :html]
    config.report_title = 'Teste'
    options = {
      additional_info: {
        'Data/Hora da execução' => DateTime.now.strftime('%d/%m/%Y - %H:%M:%S')
      }
    }
    ReportBuilder.build_report options
  end
end