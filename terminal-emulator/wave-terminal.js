const screenEl = document.getElementById('screen');
const formEl = document.getElementById('command-form');
const inputEl = document.getElementById('command-input');

const commands = {
  help: [
    'Available commands: help, status, routes, receipt, relay, version, clear',
    'Mode: public-safe terminal emulation. No live shell execution is enabled.'
  ],
  status: [
    'WAVE_STATUS: terminal_emulator_active',
    'PUBLIC_RELAY: active',
    'COMMAND_MODE: simulated_public_safe',
    'REAL_SHELL_EXECUTION: disabled'
  ],
  routes: [
    'FAST_CHANNEL: williamscottdavisii136/WAVE/issues/2',
    'LEDGER_CHANNEL: williamscottdavisii136/WAVE/issues/4',
    'PUBLIC_OUTBOX: phone-relay/outbox/'
  ],
  receipt: [
    'RECEIPT_TEMPLATE:',
    '@williamscottdavisii136',
    'BILLY_TO_WILLIAMS_NOTICE: response_sent',
    'ACTION_TAKEN:',
    'BLOCKER:',
    'NEXT_ACTION:'
  ],
  relay: [
    'RELAY_MODE: public status only',
    'PRIVATE_WORK: keep in private repository only'
  ],
  version: ['WAVE_TERMINAL_EMULATOR_VERSION: phase_006']
};

function addLine(text, className = 'line-output') {
  const div = document.createElement('div');
  div.className = className;
  div.textContent = text;
  screenEl.appendChild(div);
  screenEl.scrollTop = screenEl.scrollHeight;
}

function runCommand(raw) {
  const command = raw.trim().toLowerCase();
  if (!command) return;
  addLine(`WAVE> ${raw}`, 'line-input');

  if (command === 'clear') {
    screenEl.innerHTML = '';
    addLine('WAVE Terminal Emulator');
    return;
  }

  const output = commands[command];
  if (!output) {
    addLine(`Command not enabled in public-safe mode: ${raw}`, 'line-warn');
    addLine('Type help for available commands.');
    return;
  }

  output.forEach(line => addLine(line));
}

formEl.addEventListener('submit', event => {
  event.preventDefault();
  runCommand(inputEl.value);
  inputEl.value = '';
  inputEl.focus();
});
