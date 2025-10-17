import React from 'react';
import CodeBlock from '@site/src/components/CodeBlock';

// Компонент для использования в MDX файлах
export const CodeBlock1C = ({ children, title }: { children: string; title?: string }) => (
  <CodeBlock language="bsl" title={title}>
    {children}
  </CodeBlock>
);

export const CodeBlockJS = ({ children, title }: { children: string; title?: string }) => (
  <CodeBlock language="javascript" title={title}>
    {children}
  </CodeBlock>
);

export const CodeBlockJSON = ({ children, title }: { children: string; title?: string }) => (
  <CodeBlock language="json" title={title}>
    {children}
  </CodeBlock>
);

export const CodeBlockSQL = ({ children, title }: { children: string; title?: string }) => (
  <CodeBlock language="sql" title={title}>
    {children}
  </CodeBlock>
);

// Экспортируем основной компонент
export { CodeBlock };
