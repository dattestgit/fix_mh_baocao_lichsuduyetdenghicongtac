USE LEMONSYS


-- Author  : Duong Khanh Linh
-- Purpose : Add data to table
-- Date    : 12/10/2022 4:22:47 PM
-- ID      : 219203 

Declare @XAMLContent xml,@XmlContent xml,@XmlContent01 xml,@XAMLContent01 xml
Set @XAMLContent=N'<UserControl xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
 xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
  xmlns:dxg="http://schemas.devexpress.com/winfx/2008/xaml/grid"
  xmlns:dxc="http://schemas.devexpress.com/winfx/2008/xaml/core"
   xmlns:dxe="http://schemas.devexpress.com/winfx/2008/xaml/editors"
   xmlns:dxcn="http://schemas.devexpress.com/winfx/2008/xaml/core/internal"
    xmlns:dxgt="http://schemas.devexpress.com/winfx/2008/xaml/grid/themekeys"
    xmlns:L3="clr-namespace:Lemon3.Controls.DevExp;assembly=D99D0451"
	 xmlns:local="clr-namespace:Lemon3.DAF.Libs;assembly=D89D0051" MinHeight="550" MinWidth="1024" Width="Auto" Height="Auto">
  <UserControl.Resources>
    <ResourceDictionary>
      <dxcn:BrushSet x:Key="{dxgt:GridRowThemeKey ResourceKey=CellBackgroundBrushes}">
        <dxcn:BrushSet.Elements>
          <dxcn:BrushInfo x:Key="Focused" Brush="{StaticResource {dxgt:GridRowThemeKey ResourceKey=CellBorderFocusedBrush}}" />
          <dxcn:BrushInfo x:Key="Selected" Brush="{StaticResource {dxgt:GridRowThemeKey ResourceKey=BorderSelectedBrush}}" />
          <dxcn:BrushInfo x:Key="FocusedAndSelected" Brush="{StaticResource {dxgt:GridRowThemeKey ResourceKey=BorderFocusedBrush}}" />
          <dxcn:BrushInfo x:Key="BorderBrush" Brush="{StaticResource {dxgt:GridRowThemeKey ResourceKey=GridDataRowDelimiterBrush}}" />
          <dxcn:BrushInfo x:Key="BorderBrushFocusedRow" Brush="{StaticResource {dxgt:GridRowThemeKey ResourceKey=GridDataRowDelimiterBrush}}" />
        </dxcn:BrushSet.Elements>
      </dxcn:BrushSet>
      <!--Begin định dạng thuộc tính cho Header của cột-->
      <Style TargetType="dxg:GridColumnHeader">
        <Setter Property="dxg:BaseGridColumnHeader.ShowFilterButtonOnHover" Value="True" />
        <Setter Property="BorderThickness" Value="0" />
        <Setter Property="Background" Value="#F0F7FF" />
        <!--Setter Property="MaxHeight" Value="37" /> -->
        <Setter Property="FontFamily" Value="Segoe UI" />
        <Setter Property="FontSize" Value="12" />
        <Setter Property="FontWeight" Value="Regular" />
      </Style>
      <!--End định dạng thuộc tính cho Header của cột-->
      <!--Begin định dạng thuộc tính cho thuộc tính của cột-->
      <Style TargetType="dxg:GridColumn">
        <Setter Property="HorizontalHeaderContentAlignment" Value="Center" />
        <Setter Property="AllowBestFit" Value="True" />
        <Setter Property="AllowEditing" Value="False" />
        <Setter Property="ReadOnly" Value="True" />
        <Setter Property="HeaderTemplate">
          <Setter.Value>
            <DataTemplate>
              <TextBlock Text="{Binding}" TextAlignment="Center" VerticalAlignment="Center" TextWrapping="Wrap" Foreground="{DynamicResource GridControlHeaderTextColour}" />
            </DataTemplate>
          </Setter.Value>
        </Setter>
      </Style>
      <!--End định dạng thuộc tính cho thuộc tính của cột-->
      <!--Begin định dạng sự kiện focus vào ô của dòng-->
      <Style x:Key="SelectedRowStyle" TargetType="{x:Type dxg:RowControl}">
        <Setter Property="FontFamily" Value="Segoe UI" />
        <Setter Property="FontSize" Value="12" />
        <Setter Property="FontWeight" Value="Regular" />
        <Style.Triggers>
          <DataTrigger Binding="{Binding Path=IsSelected}" Value="True">
            <Setter Property="Background" Value="#FFF0F5" />
            <Setter Property="Foreground" Value="Black" />
          </DataTrigger>
          <Trigger Property="dxg:GridViewBase.IsFocusedRow" Value="True">
            <Setter Property="Background" Value="#D7EED4" />
            <Setter Property="Foreground" Value="Black" />
          </Trigger>
        </Style.Triggers>
      </Style>
      <!--End định dạng sự kiện focus vào ô của dòng-->
      <!--Begin định dạng thuộc tính cho thuộc tính của cột Header Template in DataGrid Control (dxg:GridControl) Áp dụng cho thuộc tính ColumnHeaderTemplate-->
      <!--
  <dxg:GridColumn.HeaderTemplate>				
  <DataTemplate><TextBlock Text="{Binding}" FontWeight="Bold"/></DataTemplate>			
  </dxg:GridColumn.HeaderTemplate>    
   -->
      <Style TargetType="dxg:TableView">
        <Setter Property="ColumnHeaderTemplate">
          <Setter.Value>
            <DataTemplate>
              <ContentControl Content="{Binding}" Width="{Binding Width, RelativeSource={RelativeSource FindAncestor, AncestorType={x:Type DataGridColumnHeader}}}" Background="LightSkyBlue" TextBlock.FontWeight="Bold" TextBlock.FontFamily="Segoe UI" TextBlock.FontSize="12" TextBlock.TextAlignment="Center" VerticalContentAlignment="Top" HorizontalContentAlignment="Stretch" />
            </DataTemplate>
          </Setter.Value>
        </Setter>
      </Style>
      <!--End định dạng thuộc tính cho thuộc tính của cột Header Template in DataGrid Control (dxg:GridControl) Áp dụng cho thuộc tính ColumnHeaderTemplate-->
    </ResourceDictionary>
  </UserControl.Resources>
  <Border BorderBrush="Black" BorderThickness="1">
    <Grid Name="gridMain">
      <Grid.RowDefinitions>
        <RowDefinition Height="auto" />
        <RowDefinition />
        <RowDefinition Height="0" />
      </Grid.RowDefinitions>
      <Grid>
        <Grid.ColumnDefinitions>
          <ColumnDefinition Width="auto" MinWidth="3" />
          <ColumnDefinition Width="50*" />
          <ColumnDefinition Width="50*" />
          <ColumnDefinition Width="30*" />
          <ColumnDefinition Width="60*" MinWidth="3" />
          <ColumnDefinition Width="3*" MinWidth="3" />
          <ColumnDefinition Width="5*" />
          <ColumnDefinition Width="5*" MinWidth="5" />
          <ColumnDefinition Width="30*" />
          <ColumnDefinition Width="60*" MinWidth="3" />
          <ColumnDefinition Width="5" MinWidth="3" />
        </Grid.ColumnDefinitions>
        <Grid.RowDefinitions>
          <RowDefinition Height="45" />
          <RowDefinition Height="45" />
          <RowDefinition Height="45" />
        </Grid.RowDefinitions>
        <!--Combo Kỳ -->
        <dxg:LookUpEdit x:Name="tdbcPeriodIDFrom" DisplayMember="PeriodID" ValueMember="PeriodID" AutoPopulateColumns="False" PopupWidth="50" ImmediatePopup="True" Grid.Column="1" IsEnabled="{Binding IsChecked, ElementName= optPeriod }" Margin="0,10,0,12" Height="22">
          <dxg:LookUpEdit.PopupContentTemplate>
            <ControlTemplate>
              <dxg:GridControl x:Name="PART_GridControl" AutoGenerateColumns="None" AutoPopulateColumns="False">
                <dxg:GridControl.Columns>
                  <dxg:GridColumn FieldName="PeriodID" Header="Năm" />
                </dxg:GridControl.Columns>
                <dxg:GridControl.View>
                  <dxg:TableView HorizontalScrollbarVisibility="Auto" VerticalScrollbarVisibility="Auto" AllowPerPixelScrolling="True" ShowTotalSummary="True" ShowGroupPanel="False" AutoWidth="True" AllowBestFit="True" BestFitArea="All" BestFitMode="AllRows" RowStyle="{StaticResource SelectedRowStyle}" />
                </dxg:GridControl.View>
              </dxg:GridControl>
            </ControlTemplate>
          </dxg:LookUpEdit.PopupContentTemplate>
        </dxg:LookUpEdit>
		  
		  
        <dxg:LookUpEdit x:Name="tdbcPeriodIDTo" Margin="5,10,0,12" DisplayMember="PeriodID" ValueMember="PeriodID" AutoPopulateColumns="False" PopupWidth="50" ImmediatePopup="True" Grid.Column="2" IsEnabled="{Binding IsChecked, ElementName= optPeriod }" Height="22">
          <dxg:LookUpEdit.PopupContentTemplate>
            <ControlTemplate>
              <dxg:GridControl x:Name="PART_GridControl" AutoGenerateColumns="None" AutoPopulateColumns="False">
                <dxg:GridControl.Columns>
                  <dxg:GridColumn FieldName="PeriodID" Header="Năm" />
                </dxg:GridControl.Columns>
                <dxg:GridControl.View>
                  <dxg:TableView HorizontalScrollbarVisibility="Auto" VerticalScrollbarVisibility="Auto" AllowPerPixelScrolling="True" ShowTotalSummary="True" ShowGroupPanel="False" AutoWidth="True" AllowBestFit="True" BestFitArea="All" BestFitMode="AllRows" RowStyle="{StaticResource SelectedRowStyle}" />
                </dxg:GridControl.View>
              </dxg:GridControl>
            </ControlTemplate>
          </dxg:LookUpEdit.PopupContentTemplate>
        </dxg:LookUpEdit>
        <RadioButton x:Name="optPeriod" Content="Kỳ" HorizontalAlignment="Left" Margin="10,14,10,3" IsChecked="True" Height="27" />

        <!--Begin Button Lọc-->
        <L3:L3Button x:Name="btnFilter" Content="Lọc" HorizontalAlignment="Right" Margin="0,0,5,3" Width="80" Grid.Column="9" Grid.Row="2" Height="20" />
        <!--End Button Lọc-->
      </Grid>
      <L3:L3GridControl x:Name="tdbg" ItemsSource="{Binding TableMaster}" EnableSmartColumnsGeneration="True" HorizontalContentAlignment="Stretch" Width="Auto" Grid.Row="1" Height="Auto" Grid.RowSpan="1">
        <dxg:GridControl.ContextMenu>
          <ContextMenu>
            <MenuItem Name="mnuListAll" Header="Liệt kê tất cả" />
            <MenuItem Name="mnuExportExcelDirect" Header="Xuất Excel trực tiếp" />
            <MenuItem Name="mnuExportToExcel" Header="Xuất Excel theo mẫu" />
          </ContextMenu>
        </dxg:GridControl.ContextMenu>
        <dxg:GridControl.View>
          <dxg:TableView HorizontalScrollbarVisibility="Auto" VerticalScrollbarVisibility="Auto" AllowFilterEditor="True" ShowFilterPanelMode="Never" UseEvenRowBackground="True" EvenRowBackground="Beige" BestFitMode="AllRows" AllowBestFit="True" BestFitArea="All" AllowPerPixelScrolling="True" ShowTotalSummary="True" ShowAutoFilterRow="True" FilterRowDelay="2000" AllowEditing="True" ShowGroupedColumns="True" AllowGroupSummaryCascadeUpdate="True" RowStyle="{StaticResource SelectedRowStyle}">
            <dxg:TableView.FormatConditions>
              <dxg:FormatCondition Expression="[Style] = ''(B, Red)''">
                <dxc:Format FontWeight="Bold" Foreground="Red" />
              </dxg:FormatCondition>
              <dxg:FormatCondition Expression="[Style] = ''(B, Black)''">
                <dxc:Format FontWeight="Bold" Foreground="Red" />
              </dxg:FormatCondition>
              <dxg:FormatCondition Expression="[Style] = ''(I, Blue)''">
                <dxc:Format FontStyle="Italic" Foreground="Blue" />
              </dxg:FormatCondition>
              <dxg:FormatCondition Expression="[Style] = ''(I, Black)''">
                <dxc:Format FontStyle="Italic" Foreground="Black" />
              </dxg:FormatCondition>
            </dxg:TableView.FormatConditions>
          </dxg:TableView>
        </dxg:GridControl.View>
      </L3:L3GridControl>
    </Grid>
  </Border>
</UserControl>'

Set @XmlContent=N'<form version="4.0.0" formID="D01F4070" type="Inquiry" caption="Lịch sử duyệt đề nghị công tác">
<parameters>
    <parameter name="pFormIDPermission" dataType="text" value="Z_D01F4070" />
</parameters>

<variables>

    <variable name="voptPeriod" control="optPeriod" dataType="number" binding="" />
    <variable name="vPeriodFr" control="tdbcPeriodIDFrom" dataType="text" binding="PeriodID" />
    <variable name="vPeriodTo" control="tdbcPeriodIDTo" dataType="text" binding="PeriodID" />
</variables>

<datasets>
    <dataset name="Periods" queryText="EXEC D01P4070 value[''pDivisionID''], value[''pUserID''], value[''pHostName''], value[''pLanguage''], ''Period''" />

    <dataset name="dsCreateCol" queryText="EXEC D01P4070
        value[''pDivisionID''],
        value[''pUserID''],
        value[''pHostName''],
        value[''pLanguage''],
        ''AddCol'',
        0,
        '''',
        '''',
        0,
        '''',
        '''',
        ''()'',
        '''',
        '''',
        ''''" />

    <dataset name="dsGrid" queryText="EXEC D01P4070
        value[''pDivisionID''],
        value[''pUserID''],
        value[''pHostName''],
        value[''pLanguage''],
        ''LoadGrid'',
        value[''voptPeriod''],
        value[''vPeriodFr''],
        value[''vPeriodTo''],
        0,
        '''',
        '''',
        ''()'',
        '''',
        '''',
        ''''
		
		" />
</datasets>

<commands>
    <command name="cmdFilter">
        <add type="required" control="tdbcPeriodIDFrom;tdbcPeriodIDTo" />
        <add type="addCol" control="tdbg" dataset="dsCreateCol" />
        <add type="load" control="tdbg" dataset="dsGrid" />
    </command>
</commands>

<form-items>
    <control name="tdbcPeriodIDFrom" type="combo" dataset="Periods" event="SelectedIndexChanged" required="true" />
    <control name="tdbcPeriodIDTo" type="combo" dataset="Periods" event="SelectedIndexChanged" required="true" />
    <control name="btnFilter" type="button" event="Click" command="cmdFilter" hotKey="F5" isAutoClick="true" />
</form-items>
</form>'
Set @XmlContent01=N''''''
Set @XAMLContent01=N''''''
IF NOT EXISTS(SELECT TOP 1 1 FROM D00T0147 WITH(NOLOCK) WHERE MenuItemID = '0140700')
INSERT INTO D00T0147(ModuleID, MenuItemID, MenuGroupID, DisplayOrder, PerrmissionSreenID, FormID, ProgramName, ProgramType, Parameter, LCode,
 Disabled, IsAnchor, IsBlance, SqlCheckForm, XAMLContent, XmlContent, XmlContent01, XAMLContent01)
VALUES (N'01',N'0140700',N'I',0,N'Z_D01F4070',N'D89F4000',N'D89D4951',N'DAF40',N'',N'',0,0,0,N'',@XAMLContent,@XmlContent,@XmlContent01,@XAMLContent01)

ELSE
UPDATE D00T0147
SET ModuleID = N'01',MenuItemID = N'0140700',MenuGroupID = N'I',DisplayOrder = 0,PerrmissionSreenID = N'Z_D01F4070',FormID = N'D89F4000',
ProgramName = N'D89D4951',ProgramType = N'DAF40',Parameter = N'',LCode = N'',Disabled = 0,IsAnchor = 0,IsBlance = 0,SqlCheckForm = N'',
XAMLContent = @XAMLContent,XmlContent = @XmlContent,XmlContent01 = @XmlContent01,XAMLContent01 = @XAMLContent01
WHERE MenuItemID = '0140700'

select*from D00T0147 where MenuItemID=N'0140700'
