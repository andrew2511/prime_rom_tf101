.class Lcom/android/videoeditor/ProjectsActivity$7;
.super Ljava/lang/Object;
.source "ProjectsActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/ProjectsActivity;->onCarouselItemLongPress(Ljava/lang/String;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/ProjectsActivity;

.field final synthetic val$projectPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/ProjectsActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/videoeditor/ProjectsActivity$7;->this$0:Lcom/android/videoeditor/ProjectsActivity;

    iput-object p2, p0, Lcom/android/videoeditor/ProjectsActivity$7;->val$projectPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "menuItem"

    .prologue
    .line 272
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 285
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 274
    :pswitch_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 275
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "path"

    iget-object v2, p0, Lcom/android/videoeditor/ProjectsActivity$7;->val$projectPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v1, p0, Lcom/android/videoeditor/ProjectsActivity$7;->this$0:Lcom/android/videoeditor/ProjectsActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/android/videoeditor/ProjectsActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 272
    :pswitch_data_0
    .packed-switch 0x7f080044
        :pswitch_0
    .end packed-switch
.end method
