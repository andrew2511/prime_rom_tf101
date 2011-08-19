.class final Lcom/zinio/mobile/android/view/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/zinio/mobile/android/view/an;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 169
    iget-object v0, p0, Lcom/zinio/mobile/android/view/an;->a:Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    const-string v1, "com.zinio.mobile.android.tooltips"

    invoke-virtual {v0, v1, v3}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "page-tip-index"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.zinio.mobile.android:layout/page_tip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    new-instance v4, Lcom/zinio/mobile/android/view/dialogs/e;

    invoke-direct {v4, v0}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/zinio/mobile/android/view/dialogs/b;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v5, v4}, Lcom/zinio/mobile/android/view/dialogs/b;-><init>(Lcom/zinio/mobile/android/view/dialogs/e;)V

    invoke-virtual {v4, v3, v5}, Lcom/zinio/mobile/android/view/dialogs/e;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "page-tip-index"

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 170
    return-void
.end method
