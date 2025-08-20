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
        message_when_not_committed = 'commit dis NOW !',
        max_commit_summary_length = 30,
        virtual_text_column = 80,
    },
}
