import { registerPlugin } from '@capacitor/core';

import type { BackswipePlugin } from './definitions';

const Backswipe = registerPlugin<BackswipePlugin>('Backswipe', {
  web: () => import('./web').then(m => new m.BackswipeWeb()),
});

export * from './definitions';
export { Backswipe };
