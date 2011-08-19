.class final Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Lcom/android/contacts/editor/Editor$EditorListener;
.implements Lcom/android/contacts/editor/PhotoActionPopup$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/ContactEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhotoEditorListener"
.end annotation


# instance fields
.field private final mAccountReadOnly:Z

.field private final mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/BaseRawContactEditorView;Z)V
    .locals 0
    .parameter
    .parameter "editor"
    .parameter "accountReadOnly"

    .prologue
    .line 1570
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1571
    iput-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    .line 1572
    iput-boolean p3, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->mAccountReadOnly:Z

    .line 1573
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/BaseRawContactEditorView;ZLcom/android/contacts/editor/ContactEditorFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 1565
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/BaseRawContactEditorView;Z)V

    return-void
.end method


# virtual methods
.method public onDeleted(Lcom/android/contacts/editor/Editor;)V
    .locals 0
    .parameter "removedEditor"

    .prologue
    .line 1607
    return-void
.end method

.method public onPickFromGalleryChosen()V
    .locals 5

    .prologue
    .line 1659
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    invoke-virtual {v3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getRawContactId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1802(Lcom/android/contacts/editor/ContactEditorFragment;J)J

    .line 1662
    :try_start_0
    invoke-static {}, Lcom/android/contacts/editor/ContactEditorFragment;->getPhotoPickIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1663
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$902(Lcom/android/contacts/editor/ContactEditorFragment;I)I

    .line 1664
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1669
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1665
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1666
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$300(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0049

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onRemovePictureChose()V
    .locals 2

    .prologue
    .line 1631
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setPhotoBitmap(Landroid/graphics/Bitmap;)V

    .line 1632
    return-void
.end method

.method public onRequest(I)V
    .locals 3
    .parameter "request"

    .prologue
    .line 1577
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1500(Lcom/android/contacts/editor/ContactEditorFragment;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1603
    :cond_0
    :goto_0
    return-void

    .line 1579
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1582
    iget-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->mAccountReadOnly:Z

    if-eqz v1, :cond_2

    .line 1583
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    invoke-virtual {v1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->hasSetPhoto()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1600(Lcom/android/contacts/editor/ContactEditorFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1584
    const/4 v0, 0x1

    .line 1600
    .local v0, mode:I
    :goto_1
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->access$300(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    invoke-virtual {v2}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v2

    invoke-static {v1, v2, p0, v0}, Lcom/android/contacts/editor/PhotoActionPopup;->createPopupMenu(Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;I)Landroid/widget/ListPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_0

    .line 1590
    .end local v0           #mode:I
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    invoke-virtual {v1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->hasSetPhoto()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1591
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1600(Lcom/android/contacts/editor/ContactEditorFragment;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1592
    const/4 v0, 0x3

    .restart local v0       #mode:I
    goto :goto_1

    .line 1594
    .end local v0           #mode:I
    :cond_3
    const/4 v0, 0x2

    .restart local v0       #mode:I
    goto :goto_1

    .line 1597
    .end local v0           #mode:I
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #mode:I
    goto :goto_1
.end method

.method public onTakePhotoChosen()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1639
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    invoke-virtual {v3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getRawContactId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1802(Lcom/android/contacts/editor/ContactEditorFragment;J)J

    .line 1642
    :try_start_0
    invoke-static {}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1900()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 1643
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1900()Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v5}, Lcom/android/contacts/editor/ContactEditorFragment;->access$2100(Lcom/android/contacts/editor/ContactEditorFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$2002(Lcom/android/contacts/editor/ContactEditorFragment;Ljava/io/File;)Ljava/io/File;

    .line 1644
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$2000(Lcom/android/contacts/editor/ContactEditorFragment;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment;->getTakePickIntent(Ljava/io/File;)Landroid/content/Intent;

    move-result-object v1

    .line 1646
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$902(Lcom/android/contacts/editor/ContactEditorFragment;I)I

    .line 1647
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1652
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1648
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1649
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$300(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0049

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onUseAsPrimaryChosen()V
    .locals 7

    .prologue
    .line 1615
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v6}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1700(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 1616
    .local v2, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 1617
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v6}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1700(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1618
    .local v1, childView:Landroid/view/View;
    instance-of v6, v1, Lcom/android/contacts/editor/BaseRawContactEditorView;

    if-eqz v6, :cond_0

    .line 1619
    move-object v0, v1

    check-cast v0, Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-object v3, v0

    .line 1620
    .local v3, editor:Lcom/android/contacts/editor/BaseRawContactEditorView;
    invoke-virtual {v3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v5

    .line 1621
    .local v5, photoEditor:Lcom/android/contacts/editor/PhotoEditorView;
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    if-ne v3, v6, :cond_1

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v5, v6}, Lcom/android/contacts/editor/PhotoEditorView;->setSuperPrimary(Z)V

    .line 1616
    .end local v3           #editor:Lcom/android/contacts/editor/BaseRawContactEditorView;
    .end local v5           #photoEditor:Lcom/android/contacts/editor/PhotoEditorView;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1621
    .restart local v3       #editor:Lcom/android/contacts/editor/BaseRawContactEditorView;
    .restart local v5       #photoEditor:Lcom/android/contacts/editor/PhotoEditorView;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 1624
    .end local v1           #childView:Landroid/view/View;
    .end local v3           #editor:Lcom/android/contacts/editor/BaseRawContactEditorView;
    .end local v5           #photoEditor:Lcom/android/contacts/editor/PhotoEditorView;
    :cond_2
    return-void
.end method
