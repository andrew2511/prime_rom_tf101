.class Lcom/android/settings/UserDictionarySettings$MyAdapter$1;
.super Ljava/lang/Object;
.source "UserDictionarySettings.java"

# interfaces
.implements Landroid/widget/SimpleCursorAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UserDictionarySettings$MyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/UserDictionarySettings$MyAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/UserDictionarySettings$MyAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/settings/UserDictionarySettings$MyAdapter$1;->this$0:Lcom/android/settings/UserDictionarySettings$MyAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 2
    .parameter "v"
    .parameter "c"
    .parameter "columnIndex"

    .prologue
    const/4 v1, 0x1

    .line 265
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/settings/UserDictionarySettings$MyAdapter$1;->this$0:Lcom/android/settings/UserDictionarySettings$MyAdapter;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move v0, v1

    .line 271
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
