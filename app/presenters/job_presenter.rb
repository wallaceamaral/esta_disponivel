class JobPresenter < Burgundy::Item
  def badge
    "#{modality}-badge.png"
  end

  def modality_name
    %w(Modelo Ator Evento Outros)[Job.modalities[modality]]
  end

  def salary_label
    %w(
      N/A
      Abaixo\ de\ R$300
      R$300\ -\ R$600
      R$600\ -\ R$900
      Acima\ de\ R$1.000
      Valor\ hora\ a\ combinar)[Job.salaries[salary]]
  end

  def contract_type_label
    %w(
      Não\ Especificado
      CLT
      PJ)[Job.contract_types[contract_type]]
  end
end
