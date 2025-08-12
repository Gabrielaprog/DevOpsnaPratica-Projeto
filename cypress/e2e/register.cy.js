
describe('To-Do List', () => {
  beforeEach(() => {
    cy.visit('/index.html'); // Abrindo seu arquivo local
  });

  it('adiciona uma nova tarefa', () => {
    cy.get('#taskInput').type('Estudar Cypress');
    cy.contains('Adicionar').click();
    cy.contains('li', 'Estudar Cypress').should('exist');
  });

  it('remove uma tarefa', () => {
    cy.get('#taskInput').type('Remover tarefa');
    cy.contains('Adicionar').click();
    cy.contains('li', 'Remover tarefa')
      .find('button.delete')
      .click();
    cy.contains('li', 'Remover tarefa').should('not.exist');
  });
});