<?php echo $header; ?><?php echo $menu; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-google-sitemap" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-check-circle"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><i class="fa fa-upload"></i> <?php echo $heading_title; ?></h1>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-google-sitemap" class="form-horizontal">
      <div class="form-group">
        <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
        <div class="col-sm-10">
          <select name="google_sitemap_status" id="input-status" class="form-control">
            <?php if ($google_sitemap_status) { ?>
            <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
            <option value="0"><?php echo $text_disabled; ?></option>
            <?php } else { ?>
            <option value="1"><?php echo $text_enabled; ?></option>
            <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
            <?php } ?>
          </select>
        </div>
      </div>
      <div class="form-group">
        <label class="col-sm-2 control-label" for="input-data-feed"><?php echo $entry_data_feed; ?></label>
        <div class="col-sm-10">
          <textarea rows="5" readonly="readonly" id="input-data-feed" class="form-control"><?php echo $data_feed; ?></textarea>
        </div>
      </div>
    </form>
  </div>
</div>
<?php echo $footer; ?>