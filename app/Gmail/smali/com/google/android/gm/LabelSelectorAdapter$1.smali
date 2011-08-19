.class Lcom/google/android/gm/LabelSelectorAdapter$1;
.super Ljava/lang/Object;
.source "LabelSelectorAdapter.java"

# interfaces
.implements Landroid/widget/SimpleAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/LabelSelectorAdapter;-><init>(Landroid/content/Context;Lcom/google/android/gm/provider/LabelList;Ljava/util/Map;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/LabelSelectorAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/gm/LabelSelectorAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/gm/LabelSelectorAdapter$1;->this$0:Lcom/google/android/gm/LabelSelectorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 4
    .parameter "view"
    .parameter "data"
    .parameter "textRepresentation"

    .prologue
    const/4 v3, 0x0

    .line 53
    instance-of v2, p1, Landroid/widget/CheckBox;

    if-nez v2, :cond_0

    move v2, v3

    .line 65
    .end local p2
    :goto_0
    return v2

    .line 57
    .restart local p2
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    move-object v1, v0

    .line 58
    .local v1, cb:Landroid/widget/CheckBox;
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 59
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 65
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 60
    .restart local p2
    :cond_1
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 61
    invoke-virtual {v1, p3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    move v2, v3

    .line 63
    goto :goto_0
.end method
