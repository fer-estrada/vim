return {
    'f-person/git-blame.nvim',
    event = 'VeryLazy',
    opts = {
        enabled = true,
        message_template = '<author> • <date> • <summary>',
        date_format = '%r',
        schedule_event = CursorHold,
        clear_event = CursorHoldI,
        delay = 500,
        message_when_not_committed = '',
        max_commit_summary_length = 50,
        virtual_text_column = 80,
    },
}
