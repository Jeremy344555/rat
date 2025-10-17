import type {ReactNode} from 'react';
import clsx from 'clsx';
import Heading from '@theme/Heading';
import styles from './styles.module.css';

type FeatureItem = {
  title: string;
  imageSrc: string;
  description: ReactNode;
};

const FeatureList: FeatureItem[] = [
  {
    title: 'Автоматизация тестирования',
    imageSrc: '/img/png/rat-automation.png',
    description: (
      <>
        RAT предоставляет мощные инструменты для автоматизации тестирования 
        в среде 1С:Предприятие, включая работу с запросами, данными и формами.
      </>
    ),
  },
  {
    title: 'Современные технологии',
    imageSrc: '/img/png/rat-technology.png',
    description: (
      <>
        Использует современные подходы к разработке с поддержкой REST API, 
        JSON-сериализации и интеграции с внешними системами.
      </>
    ),
  },
  {
    title: 'Открытый исходный код',
    imageSrc: '/img/png/rat-community.png',
    description: (
      <>
        Проект с открытым исходным кодом, позволяющий сообществу разработчиков 
        1С вносить свой вклад и развивать функциональность.
      </>
    ),
  },
];

function Feature({title, imageSrc, description}: FeatureItem) {
  return (
    <div className={clsx('col col--4')}>
      <div className="text--center">
        <img src={imageSrc} alt={title} className={styles.featureImg} />
      </div>
      <div className="text--center padding-horiz--md">
        <Heading as="h3">{title}</Heading>
        <p>{description}</p>
      </div>
    </div>
  );
}

export default function HomepageFeatures(): ReactNode {
  return (
    <section className={styles.features}>
      <div className="container">
        <div className="row">
          {FeatureList.map((props, idx) => (
            <Feature key={idx} {...props} />
          ))}
        </div>
      </div>
    </section>
  );
}
