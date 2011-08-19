.class Lcom/asus/DLNA/DLNA$20$1;
.super Ljava/lang/Object;
.source "DLNA.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/DLNA/DLNA$20;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/asus/DLNA/DLNA$20;


# direct methods
.method constructor <init>(Lcom/asus/DLNA/DLNA$20;)V
    .locals 0
    .parameter

    .prologue
    .line 2310
    iput-object p1, p0, Lcom/asus/DLNA/DLNA$20$1;->this$1:Lcom/asus/DLNA/DLNA$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 11
    .parameter "item"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2312
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 2349
    :goto_0
    return v9

    .line 2315
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2316
    .local v2, i:Landroid/content/Intent;
    const-string v6, "com.asus.DLNA"

    const-string v7, "com.asus.DMS.Settings"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2317
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$20$1;->this$1:Lcom/asus/DLNA/DLNA$20;

    iget-object v6, v6, Lcom/asus/DLNA/DLNA$20;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-virtual {v6, v2}, Lcom/asus/DLNA/DLNA;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2322
    .end local v2           #i:Landroid/content/Intent;
    :pswitch_1
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$20$1;->this$1:Lcom/asus/DLNA/DLNA$20;

    iget-object v6, v6, Lcom/asus/DLNA/DLNA$20;->this$0:Lcom/asus/DLNA/DLNA;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Lcom/asus/DLNA/DLNA;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 2323
    .local v3, mInflater:Landroid/view/LayoutInflater;
    const/high16 v6, 0x7f03

    invoke-virtual {v3, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2324
    .local v0, about_view:Landroid/view/View;
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$20$1;->this$1:Lcom/asus/DLNA/DLNA$20;

    iget-object v6, v6, Lcom/asus/DLNA/DLNA$20;->this$0:Lcom/asus/DLNA/DLNA;

    const v7, 0x7f07002a

    invoke-virtual {v6, v7}, Lcom/asus/DLNA/DLNA;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2327
    .local v5, versionText:Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$20$1;->this$1:Lcom/asus/DLNA/DLNA$20;

    iget-object v6, v6, Lcom/asus/DLNA/DLNA$20;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-virtual {v6}, Lcom/asus/DLNA/DLNA;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.asus.DLNA"

    const/16 v8, 0x40

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 2329
    .local v4, packageInfo:Landroid/content/pm/PackageInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 2332
    .end local v4           #packageInfo:Landroid/content/pm/PackageInfo;
    :goto_1
    const v6, 0x7f080002

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2333
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$20$1;->this$1:Lcom/asus/DLNA/DLNA$20;

    iget-object v6, v6, Lcom/asus/DLNA/DLNA$20;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v6}, Lcom/asus/DLNA/DLNA;->access$6900(Lcom/asus/DLNA/DLNA;)Landroid/app/AlertDialog;

    move-result-object v6

    if-nez v6, :cond_0

    .line 2334
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/asus/DLNA/DLNA$20$1;->this$1:Lcom/asus/DLNA/DLNA$20;

    iget-object v6, v6, Lcom/asus/DLNA/DLNA$20;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-direct {v1, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2335
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f070026

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    invoke-virtual {v6, v7, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2339
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$20$1;->this$1:Lcom/asus/DLNA/DLNA$20;

    iget-object v6, v6, Lcom/asus/DLNA/DLNA$20;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/asus/DLNA/DLNA;->access$6902(Lcom/asus/DLNA/DLNA;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2341
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    iget-object v6, p0, Lcom/asus/DLNA/DLNA$20$1;->this$1:Lcom/asus/DLNA/DLNA$20;

    iget-object v6, v6, Lcom/asus/DLNA/DLNA$20;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v6}, Lcom/asus/DLNA/DLNA;->access$6900(Lcom/asus/DLNA/DLNA;)Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 2330
    :catch_0
    move-exception v6

    goto :goto_1

    .line 2312
    :pswitch_data_0
    .packed-switch 0x7f08003d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
