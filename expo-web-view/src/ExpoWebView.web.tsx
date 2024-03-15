import * as React from 'react';

import { ExpoWebViewProps } from './ExpoWebView.types';

export default function ExpoWebView(props: ExpoWebViewProps) {
  return (
    <div>
      <span>{props.name}</span>
    </div>
  );
}
