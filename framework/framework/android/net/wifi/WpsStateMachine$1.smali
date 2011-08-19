.class synthetic Landroid/net/wifi/WpsStateMachine$1;
.super Ljava/lang/Object;
.source "WpsStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WpsStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$net$wifi$SupplicantState:[I

.field static final synthetic $SwitchMap$android$net$wifi$WpsConfiguration$Setup:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 145
    invoke-static {}, Landroid/net/wifi/SupplicantState;->values()[Landroid/net/wifi/SupplicantState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/net/wifi/WpsStateMachine$1;->$SwitchMap$android$net$wifi$SupplicantState:[I

    :try_start_9
    sget-object v0, Landroid/net/wifi/WpsStateMachine$1;->$SwitchMap$android$net$wifi$SupplicantState:[I

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_52

    :goto_14
    :try_start_14
    sget-object v0, Landroid/net/wifi/WpsStateMachine$1;->$SwitchMap$android$net$wifi$SupplicantState:[I

    sget-object v1, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_50

    .line 98
    :goto_1f
    invoke-static {}, Landroid/net/wifi/WpsConfiguration$Setup;->values()[Landroid/net/wifi/WpsConfiguration$Setup;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/net/wifi/WpsStateMachine$1;->$SwitchMap$android$net$wifi$WpsConfiguration$Setup:[I

    :try_start_28
    sget-object v0, Landroid/net/wifi/WpsStateMachine$1;->$SwitchMap$android$net$wifi$WpsConfiguration$Setup:[I

    sget-object v1, Landroid/net/wifi/WpsConfiguration$Setup;->PBC:Landroid/net/wifi/WpsConfiguration$Setup;

    invoke-virtual {v1}, Landroid/net/wifi/WpsConfiguration$Setup;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_4e

    :goto_33
    :try_start_33
    sget-object v0, Landroid/net/wifi/WpsStateMachine$1;->$SwitchMap$android$net$wifi$WpsConfiguration$Setup:[I

    sget-object v1, Landroid/net/wifi/WpsConfiguration$Setup;->PIN_FROM_ACCESS_POINT:Landroid/net/wifi/WpsConfiguration$Setup;

    invoke-virtual {v1}, Landroid/net/wifi/WpsConfiguration$Setup;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_4c

    :goto_3e
    :try_start_3e
    sget-object v0, Landroid/net/wifi/WpsStateMachine$1;->$SwitchMap$android$net$wifi$WpsConfiguration$Setup:[I

    sget-object v1, Landroid/net/wifi/WpsConfiguration$Setup;->PIN_FROM_DEVICE:Landroid/net/wifi/WpsConfiguration$Setup;

    invoke-virtual {v1}, Landroid/net/wifi/WpsConfiguration$Setup;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_4a

    :goto_49
    return-void

    :catch_4a
    move-exception v0

    goto :goto_49

    :catch_4c
    move-exception v0

    goto :goto_3e

    :catch_4e
    move-exception v0

    goto :goto_33

    .line 145
    :catch_50
    move-exception v0

    goto :goto_1f

    :catch_52
    move-exception v0

    goto :goto_14
.end method
