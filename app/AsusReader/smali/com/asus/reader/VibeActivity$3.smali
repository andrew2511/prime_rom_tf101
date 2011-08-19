.class Lcom/asus/reader/VibeActivity$3;
.super Ljava/lang/Object;
.source "VibeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/VibeActivity;->showVibePaymentDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/VibeActivity;

.field final synthetic val$agree:Landroid/widget/CheckBox;

.field final synthetic val$list:Landroid/widget/ListView;

.field final synthetic val$subcontent:Lcom/asus/reader/vibe2/SubcategoryContents;

.field final synthetic val$uris:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/asus/reader/VibeActivity;Landroid/widget/CheckBox;Landroid/widget/ListView;[Ljava/lang/String;Lcom/asus/reader/vibe2/SubcategoryContents;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1011
    iput-object p1, p0, Lcom/asus/reader/VibeActivity$3;->this$0:Lcom/asus/reader/VibeActivity;

    iput-object p2, p0, Lcom/asus/reader/VibeActivity$3;->val$agree:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/asus/reader/VibeActivity$3;->val$list:Landroid/widget/ListView;

    iput-object p4, p0, Lcom/asus/reader/VibeActivity$3;->val$uris:[Ljava/lang/String;

    iput-object p5, p0, Lcom/asus/reader/VibeActivity$3;->val$subcontent:Lcom/asus/reader/vibe2/SubcategoryContents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1014
    :try_start_0
    iget-object v0, p0, Lcom/asus/reader/VibeActivity$3;->val$agree:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1048
    :cond_0
    :goto_0
    return-void

    .line 1020
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/VibeActivity$3;->val$list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 1021
    const-string v1, "ASUSREADER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " selected!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    if-ltz v0, :cond_0

    .line 1024
    iget-object v1, p0, Lcom/asus/reader/VibeActivity$3;->val$uris:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 1027
    new-instance v1, Landroid/text/SpannableString;

    iget-object v2, p0, Lcom/asus/reader/VibeActivity$3;->val$uris:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1028
    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 1029
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/asus/reader/VibeActivity$3;->val$uris:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-class v3, Landroid/text/style/URLSpan;

    invoke-virtual {v1, v2, v0, v3}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 1030
    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    .line 1032
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1033
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/asus/reader/VibeActivity$3;->this$0:Lcom/asus/reader/VibeActivity;

    const-class v3, Lcom/asus/reader/ReaderWebView;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1034
    const-string v2, "weburl"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1035
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/asus/reader/VibeActivity$3;->val$subcontent:Lcom/asus/reader/vibe2/SubcategoryContents;

    invoke-virtual {v2}, Lcom/asus/reader/vibe2/SubcategoryContents;->getMainCategoryId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/asus/reader/VibeActivity$3;->val$subcontent:Lcom/asus/reader/vibe2/SubcategoryContents;

    invoke-virtual {v2}, Lcom/asus/reader/vibe2/SubcategoryContents;->getSubcategoryId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/asus/reader/VibeActivity$3;->val$subcontent:Lcom/asus/reader/vibe2/SubcategoryContents;

    invoke-virtual {v2}, Lcom/asus/reader/vibe2/SubcategoryContents;->getSPContentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1036
    const-string v2, "vibeid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1039
    iget-object v0, p0, Lcom/asus/reader/VibeActivity$3;->val$subcontent:Lcom/asus/reader/vibe2/SubcategoryContents;

    iget-object v2, p0, Lcom/asus/reader/VibeActivity$3;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-virtual {v2}, Lcom/asus/reader/VibeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/asus/reader/vibe2/VibeAgent;->addCandidateDownload(Lcom/asus/reader/vibe2/SubcategoryContents;Landroid/content/Context;)V

    .line 1040
    iget-object v0, p0, Lcom/asus/reader/VibeActivity$3;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-virtual {v0, v1}, Lcom/asus/reader/VibeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1041
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1043
    :catch_0
    move-exception v0

    .line 1045
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0
.end method
