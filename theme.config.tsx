import React from 'react'
import { DocsThemeConfig } from 'nextra-theme-docs'

const config: DocsThemeConfig = {
  logo: <section><span>Paradigma Lógico - Prolog | Branco 3</span></section>,
  head: (
    <>
      <title>Paradigma Lógico - Prolog | Branco 3</title>
      <link rel="icon" href="/public/favicon.ico" />
      <meta name="viewport" content="width=device-width, initial-scale=1" />
    </>
  ),
  project: {
    link: 'https://github.com/devmarcosvinicius/paradigma-logico-prolog',
  },
  docsRepositoryBase: 'https://github.com/shuding/nextra-docs-template',
  footer: {
    text: 'Desenvolvido por marcosviniciusdev.com',
  },
}

export default config
