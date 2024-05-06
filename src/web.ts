import { WebPlugin } from '@capacitor/core';

import type { BackswipePlugin } from './definitions';

export class BackswipeWeb extends WebPlugin implements BackswipePlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    // console.log('ECHO', options);
    return options;
  }
}
