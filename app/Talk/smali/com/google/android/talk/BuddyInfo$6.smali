.class Lcom/google/android/talk/BuddyInfo$6;
.super Ljava/lang/Object;
.source "BuddyInfo.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/BuddyInfo;->update(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/BuddyInfo;


# direct methods
.method constructor <init>(Lcom/google/android/talk/BuddyInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/google/android/talk/BuddyInfo$6;->this$0:Lcom/google/android/talk/BuddyInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 334
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/BuddyInfo$6;->this$0:Lcom/google/android/talk/BuddyInfo;

    invoke-static {v0}, Lcom/google/android/talk/BuddyInfo;->access$500(Lcom/google/android/talk/BuddyInfo;)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/BuddyInfo$6;->this$0:Lcom/google/android/talk/BuddyInfo;

    invoke-static {v1}, Lcom/google/android/talk/BuddyInfo;->access$300(Lcom/google/android/talk/BuddyInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gtalkservice/IImSession;->clearContactFlags(Ljava/lang/String;)V

    .line 335
    packed-switch p3, :pswitch_data_0

    .line 349
    :goto_0
    return-void

    .line 337
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/talk/BuddyInfo$6;->this$0:Lcom/google/android/talk/BuddyInfo;

    invoke-static {v0}, Lcom/google/android/talk/BuddyInfo;->access$500(Lcom/google/android/talk/BuddyInfo;)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/BuddyInfo$6;->this$0:Lcom/google/android/talk/BuddyInfo;

    invoke-static {v1}, Lcom/google/android/talk/BuddyInfo;->access$300(Lcom/google/android/talk/BuddyInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gtalkservice/IImSession;->pinContact(Ljava/lang/String;)V

    goto :goto_0

    .line 346
    :catch_0
    move-exception v0

    goto :goto_0

    .line 340
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/talk/BuddyInfo$6;->this$0:Lcom/google/android/talk/BuddyInfo;

    invoke-static {v0}, Lcom/google/android/talk/BuddyInfo;->access$500(Lcom/google/android/talk/BuddyInfo;)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/BuddyInfo$6;->this$0:Lcom/google/android/talk/BuddyInfo;

    invoke-static {v1}, Lcom/google/android/talk/BuddyInfo;->access$300(Lcom/google/android/talk/BuddyInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gtalkservice/IImSession;->hideContact(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
