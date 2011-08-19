.class public Lcom/google/android/street/WhatsNewDialog;
.super Landroid/app/Dialog;
.source "WhatsNewDialog.java"


# static fields
.field private static final versions:[I


# instance fields
.field private currentVersionShown:I

.field private lastVersionShown:I

.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3e80

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/street/WhatsNewDialog;->versions:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 56
    iput v2, p0, Lcom/google/android/street/WhatsNewDialog;->lastVersionShown:I

    .line 66
    const-string v0, "com.google.android.street.StreetView"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/street/WhatsNewDialog;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/street/WhatsNewDialog;->requestWindowFeature(I)Z

    .line 73
    invoke-virtual {p0}, Lcom/google/android/street/WhatsNewDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/google/android/street/WhatsNewDialog;->setContentView(I)V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/street/WhatsNewDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/street/WhatsNewDialog;->onOkClick()V

    return-void
.end method

.method private fillDialog(I)V
    .locals 0
    .parameter "version"

    .prologue
    .line 128
    packed-switch p1, :pswitch_data_0

    .line 133
    :goto_0
    return-void

    .line 130
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/street/WhatsNewDialog;->fillInC2GInfo()V

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x3e80
        :pswitch_0
    .end packed-switch
.end method

.method private fillInC2GInfo()V
    .locals 7

    .prologue
    .line 140
    const v4, 0x7f08000a

    invoke-virtual {p0, v4}, Lcom/google/android/street/WhatsNewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 141
    .local v1, image:Landroid/widget/ImageView;
    const v4, 0x7f020008

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    const v4, 0x7f08000b

    invoke-virtual {p0, v4}, Lcom/google/android/street/WhatsNewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TableLayout;

    .line 145
    .local v3, table:Landroid/widget/TableLayout;
    invoke-virtual {p0}, Lcom/google/android/street/WhatsNewDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030001

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableRow;

    .line 147
    .local v2, row:Landroid/widget/TableRow;
    invoke-virtual {v3, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 150
    const v4, 0x7f080005

    invoke-virtual {v2, v4}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 151
    .local v0, description:Landroid/widget/TextView;
    const v4, 0x7f040010

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 152
    return-void
.end method

.method private static getNextVersionToShow(I)I
    .locals 2
    .parameter "lastVersionShown"

    .prologue
    .line 119
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/google/android/street/WhatsNewDialog;->versions:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 120
    sget-object v1, Lcom/google/android/street/WhatsNewDialog;->versions:[I

    aget v1, v1, v0

    if-ge p0, v1, :cond_0

    .line 121
    sget-object v1, Lcom/google/android/street/WhatsNewDialog;->versions:[I

    aget v1, v1, v0

    .line 124
    :goto_1
    return v1

    .line 119
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private onOkClick()V
    .locals 3

    .prologue
    .line 160
    iget v0, p0, Lcom/google/android/street/WhatsNewDialog;->currentVersionShown:I

    iput v0, p0, Lcom/google/android/street/WhatsNewDialog;->lastVersionShown:I

    .line 163
    iget-object v0, p0, Lcom/google/android/street/WhatsNewDialog;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "whatsNewVersion"

    iget v2, p0, Lcom/google/android/street/WhatsNewDialog;->lastVersionShown:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 167
    invoke-virtual {p0}, Lcom/google/android/street/WhatsNewDialog;->dismiss()V

    .line 170
    iget v0, p0, Lcom/google/android/street/WhatsNewDialog;->lastVersionShown:I

    invoke-static {v0}, Lcom/google/android/street/WhatsNewDialog;->getNextVersionToShow(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/google/android/street/WhatsNewDialog;->show()V

    .line 173
    :cond_0
    return-void
.end method

.method public static shouldShow(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 82
    const-string v1, "com.google.android.street.StreetView"

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "whatsNewVersion"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 87
    .local v0, lastVersionShown:I
    invoke-static {v0}, Lcom/google/android/street/WhatsNewDialog;->getNextVersionToShow(I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move v1, v3

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 94
    iget v1, p0, Lcom/google/android/street/WhatsNewDialog;->lastVersionShown:I

    if-nez v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/google/android/street/WhatsNewDialog;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "whatsNewVersion"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/street/WhatsNewDialog;->lastVersionShown:I

    .line 101
    :cond_0
    iget v1, p0, Lcom/google/android/street/WhatsNewDialog;->lastVersionShown:I

    invoke-static {v1}, Lcom/google/android/street/WhatsNewDialog;->getNextVersionToShow(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/street/WhatsNewDialog;->currentVersionShown:I

    .line 102
    iget v1, p0, Lcom/google/android/street/WhatsNewDialog;->currentVersionShown:I

    invoke-direct {p0, v1}, Lcom/google/android/street/WhatsNewDialog;->fillDialog(I)V

    .line 105
    const v1, 0x7f08000d

    invoke-virtual {p0, v1}, Lcom/google/android/street/WhatsNewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 106
    .local v0, okButton:Landroid/widget/Button;
    new-instance v1, Lcom/google/android/street/WhatsNewDialog$1;

    invoke-direct {v1, p0}, Lcom/google/android/street/WhatsNewDialog$1;-><init>(Lcom/google/android/street/WhatsNewDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    return-void
.end method
