.class public Lcom/google/android/maps/driveabout/app/RmiPreference;
.super Landroid/preference/CheckBoxPreference;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/google/android/maps/driveabout/app/bo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/RmiPreference;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/RmiPreference;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/RmiPreference;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "ShowRmiWarning"

    invoke-static {p0, v0, p1}, Lad/a;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "OneButtonRmi"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lad/a;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "ShowRmiWarning"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lad/a;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/RmiPreference;->f(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/RmiPreference;->f(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0x17

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x1b

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/RmiPreference;->f(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_0
    const v0, 0x7f0b004c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0b004d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static f(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->navigation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1b

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/app/bo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/RmiPreference;->b:Lcom/google/android/maps/driveabout/app/bo;

    return-void
.end method

.method protected onClick()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/RmiPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RmiPreference;->b:Lcom/google/android/maps/driveabout/app/bo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RmiPreference;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/RmiPreference;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RmiPreference;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/RmiPreference;->a(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RmiPreference;->b:Lcom/google/android/maps/driveabout/app/bo;

    new-instance v1, Lcom/google/android/maps/driveabout/app/ci;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/ci;-><init>(Lcom/google/android/maps/driveabout/app/RmiPreference;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/bo;->b(Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "1"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/RmiPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/RmiPreference;->setChecked(Z)V

    goto :goto_0
.end method
