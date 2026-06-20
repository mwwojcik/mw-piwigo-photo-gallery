<?php
defined('PHPWG_ROOT_PATH') or die('Hacking attempt!');

define('MW_HOME_CHOICE_CATEGORY_ID', 5);
define('MW_HOME_CHOICE_LIMIT', 8);

add_event_handler('loc_end_index', 'mw_home_prepare_data');

function mw_home_prepare_data()
{
    global $template;

    $choice_photos = mw_home_get_category_photos(MW_HOME_CHOICE_CATEGORY_ID, MW_HOME_CHOICE_LIMIT);

    $template->assign('MW_HOME', true);

    $template->assign(array(
        'MW_HOME_CHOICE_PHOTOS' => $choice_photos,
    ));
}

function mw_home_get_category_photos($category_id, $limit)
{
    global $conf;

    $query = '
SELECT
    i.id,
    i.file,
    i.path,
    i.name
FROM ' . IMAGES_TABLE . ' i
INNER JOIN ' . IMAGE_CATEGORY_TABLE . ' ic
    ON i.id = ic.image_id
WHERE ic.category_id = ' . (int)$category_id . '
ORDER BY ic.rank ASC, i.date_available DESC
LIMIT ' . (int)$limit . '
;';

    $result = pwg_query($query);
    $photos = array();

    while ($row = pwg_db_fetch_assoc($result)) {
        $title = !empty($row['name']) ? $row['name'] : $row['file'];

        $photos[] = array(
            'TITLE' => $title,
            'URL' => 'picture.php?/' . (int)$row['id'] . '/category/' . (int)MW_HOME_CHOICE_CATEGORY_ID,
            'SRC' => DerivativeImage::thumb_url(array(
                'id' => $row['id'],
                'path' => $row['path'],
                'file' => $row['file'],
            )),
        );
    }

    return $photos;
}
