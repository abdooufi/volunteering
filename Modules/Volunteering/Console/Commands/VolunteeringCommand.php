<?php

namespace Modules\Volunteering\Console\Commands;

use Illuminate\Console\Command;

class VolunteeringCommand extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'command:VolunteeringCommand';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Volunteering Command description';

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
