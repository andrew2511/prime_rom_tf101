.class Lcom/layar/ui/prefs/CategoryChoiceListPreference$1$ViewHolder;
.super Ljava/lang/Object;
.source "CategoryChoiceListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field check:Landroid/widget/CheckBox;

.field image:Landroid/widget/ImageView;

.field imageBox:Landroid/view/View;

.field final synthetic this$1:Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;

.field throbber:Landroid/widget/ProgressBar;

.field title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/layar/ui/prefs/CategoryChoiceListPreference$1$ViewHolder;->this$1:Lcom/layar/ui/prefs/CategoryChoiceListPreference$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
