<?php $__env->startPush('bottom'); ?>
    <?php if(App::getLocale() != 'en'): ?>
        <script src="<?php echo e(asset ('vendor/crudbooster/assets/adminlte/plugins/daterangepicker/locales.min.js')); ?>"
                charset="UTF-8"></script>
    <?php endif; ?>

    <script type="text/javascript">
        var lang = '<?php echo e(App::getLocale()); ?>';
        moment.locale(lang);
        $(function() {
            $('.input_datetime').daterangepicker({
                singleDatePicker: true,
                timePicker: true,
                timePickerIncrement: 1,
                timePicker24Hour: true,
                autoApply: false,
                showDropdowns: true,
                locale: {
                    format: "YYYY-MM-DD HH:mm:ss",
                },

            });
        });
    </script>
<?php $__env->stopPush(); ?>