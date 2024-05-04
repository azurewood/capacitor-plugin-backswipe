export interface BackswipePlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
