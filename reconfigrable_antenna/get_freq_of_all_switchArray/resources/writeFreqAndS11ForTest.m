%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ---- 本函数用于将指定开关组合的工作频率及其对应的S11参数写入文件 ---- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % ---- 注释 ---- %
        % ---- 本函数的主要作用是：
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            % ---- 1.将指定开关组合以及其对应的工作频率和S11参数存入文件
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function writeFreqAndS11ForTest(freq, s11, count, myReconfigurableAntennaTempSwitchArray)
%% ---- 打开文件
    %{ 
        ---- 注意 ----
        ---- 注意 ----
        ---- 注意 ----
            ‘a’ ：以追加方式打开文件，打开文件后指针位于文件末尾。文件不存在则创建。
        ---- 注意 ----
        ---- 注意 ----
        ---- 注意 ----
    %}
    fidTxt = fopen('..\matlab\data_file\freq_of_all_switchArray\freqAndS11OfAllSwitchArray.txt', 'a');
%% ---- 写入TXT文件
    % ---- 将开关组合写入文件
        fprintf(fidTxt, '%.0f ', myReconfigurableAntennaTempSwitchArray);
    % ---- 将工作频率及其对应的S11参数写入文件
        fprintf(fidTxt, '%.2f %.2f %.0f', freq, s11, count);
    % ---- 换行
        %{ 
            ---- 注意 ----
            ---- 注意 ----
            ---- 注意 ----
                windows下的txt的换行符是“\r\n”
            ---- 注意 ----
            ---- 注意 ----
            ---- 注意 ----
        %}
        fprintf(fidTxt, '\r\n');
%% ---- 关闭文件
    fclose(fidTxt);
end

