.class Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel$BookmarkAdapter$1;
.super Ljava/lang/Object;
.source "UiShapePanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel$BookmarkAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel$BookmarkAdapter;

.field private final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel$BookmarkAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel$BookmarkAdapter$1;->this$1:Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel$BookmarkAdapter;

    iput p2, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel$BookmarkAdapter$1;->val$index:I

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel$BookmarkAdapter$1;->this$1:Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel$BookmarkAdapter;

    invoke-static {v0}, Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel$BookmarkAdapter;->access$0(Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel$BookmarkAdapter;)Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel$BookmarkAdapter$1;->this$1:Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel$BookmarkAdapter;

    invoke-static {v1}, Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel$BookmarkAdapter;->access$0(Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel$BookmarkAdapter;)Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    move-result-object v1

    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_BookclipRemove:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel$BookmarkAdapter$1;->val$index:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->onCommand(Lcom/infraware/uxcontrol/uiunit/UiUnitView;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;[Ljava/lang/Object;)V

    .line 252
    return-void
.end method
