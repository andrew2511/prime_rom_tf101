.class synthetic Lcom/amazon/kcp/settings/SettingsActivity$5;
.super Ljava/lang/Object;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/settings/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kcp$settings$SettingsActivity$SettingsViewType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 296
    invoke-static {}, Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;->values()[Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kcp/settings/SettingsActivity$5;->$SwitchMap$com$amazon$kcp$settings$SettingsActivity$SettingsViewType:[I

    :try_start_0
    sget-object v0, Lcom/amazon/kcp/settings/SettingsActivity$5;->$SwitchMap$com$amazon$kcp$settings$SettingsActivity$SettingsViewType:[I

    sget-object v1, Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;->SECTION:Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;

    invoke-virtual {v1}, Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/amazon/kcp/settings/SettingsActivity$5;->$SwitchMap$com$amazon$kcp$settings$SettingsActivity$SettingsViewType:[I

    sget-object v1, Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;->TWO_LINES:Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;

    invoke-virtual {v1}, Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/amazon/kcp/settings/SettingsActivity$5;->$SwitchMap$com$amazon$kcp$settings$SettingsActivity$SettingsViewType:[I

    sget-object v1, Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;->TWO_LINES_CHECKBOX:Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;

    invoke-virtual {v1}, Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
