<?php

namespace Modules\Yearplan\Console\Commands;

use Illuminate\Console\Command;

class YearplanCommand extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'command:YearplanCommand';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Yearplan Command description';

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        return Command::SUCCESS;
    }
}
