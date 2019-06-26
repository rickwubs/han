<?php

namespace Core;

use Exception;

/**
 * View
 */
class View
{
    /**
     * Render a view file
     *
     * @param string $view The view file
     *
     * @param array $args The arguments to be passed to the view
     * @return void
     * @throws Exception
     */
    public static function render($view, $args = [])
    {
        extract($args, EXTR_SKIP);

        $file = "../App/Views/$view"; // relative to Core directory

        if (is_readable($file)) {
            require $file;
        } else {
            throw new Exception("$file not found");
        }
    }

    /**
     * Renders a template based on a view. Currently not implemented,
     * instead being passed to the render() function due to not being allowed to use frameworks such as Twig.
     *
     * @param $view
     * @param array $args
     * @throws Exception
     */
    public static function renderTemplate($view, $args = [])
    {
        View::render($view, $args);
    }
}