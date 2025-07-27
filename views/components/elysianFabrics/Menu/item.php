<li>
  <a href="<?= $arg["route"] ?>"><i class="sidebar-item-icon <?= $arg["icon"] ?>"></i>
    <span class="nav-label"><?= $arg["name"] ?></span>
    <?php if (isset($arg["links"])) { ?>
      <i class="fa fa-angle-left arrow"></i>
    <?php } ?>
  </a>
  <?php if (isset($arg["links"])) { ?>
    <ul class="nav-2-level collapse">
      <?php foreach ($arg["links"] as $link) { ?>
        <li>
          <a href="<?= $base_url ?>/<?= $link["route"] ?>"><?= $link["text"] ?></a>
        </li>
      <?php } ?>
    </ul>
  <?php } ?>
</li>