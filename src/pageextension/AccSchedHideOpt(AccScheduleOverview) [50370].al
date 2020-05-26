pageextension 50370 "AccSched_HideOpt" extends "Acc. Schedule Overview"
{
    layout
    {
        modify(General)
        {
            Visible = ShowOptions;
        }
        modify("Dimension Filters")
        {
            Visible = ShowOptions;
        }
    }

    actions
    {
        addfirst(processing)
        {
            action(ShowHideOptions)
            {
                ApplicationArea = All;
                Caption = 'Show/Hide Options';
                Image = SetupList;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    ShowOptions := not ShowOptions;
                    CurrPage.Update();
                end;
            }
        }
    }

    trigger OnOpenPage()
    begin
        ShowOptions := true;
    end;

    var
        ShowOptions: Boolean;
}