function prepare_submit_voc(res_path, cache_name, dir_name)

  cache_dir = fullfile(pwd, 'output', 'weakly_cachedir', cache_name, dir_name);
  mkdir_if_missing(cache_dir);
  voc_2012  = fullfile(cache_dir, 'VOC2012');

  main_dir  = fullfile(voc_2012, 'Main');

  mkdir_if_missing(main_dir);
  for i = 1:numel(res_path)
    cur_path = res_path{i};
    temp = regexp(cur_path, 'comp4-', 'split');
    temp = regexp(temp{2}, '_', 'split');
    to_path  = fullfile(main_dir, ['comp4_', 'det_test_', temp{end}]);
    copyfile(cur_path, to_path);
  end
  
end
