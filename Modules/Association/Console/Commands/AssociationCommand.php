<?php

namespace Modules\Association\Console\Commands;

use Illuminate\Console\Command;

class AssociationCommand extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'command:AssociationCommand';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Association Command description';

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
