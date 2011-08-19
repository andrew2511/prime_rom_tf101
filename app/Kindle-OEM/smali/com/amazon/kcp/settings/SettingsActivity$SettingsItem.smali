.class Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;
.super Ljava/lang/Object;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/settings/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingsItem"
.end annotation


# static fields
.field private static final ACCOUNT_SECTION:Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;

.field private static final APPLICATION_SECTION:Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;

.field private static final REGISTERED_DEVICE:Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;

.field private static final REGISTERED_USER:Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;

.field private static final VOLUME_KEYS:Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;


# instance fields
.field public final text1:I

.field public final text2:I

.field public final viewType:Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 52
    new-instance v0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;

    sget-object v1, Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;->SECTION:Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;

    const v2, 0x7f0b0089

    invoke-direct {v0, v1, v2, v4}, Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;-><init>(Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;II)V

    sput-object v0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;->ACCOUNT_SECTION:Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;

    .line 53
    new-instance v0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;

    sget-object v1, Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;->SINGLE_LINE:Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;

    const v2, 0x7f0b0090

    invoke-direct {v0, v1, v2, v4}, Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;-><init>(Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;II)V

    sput-object v0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;->REGISTERED_USER:Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;

    .line 54
    new-instance v0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;

    sget-object v1, Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;->TWO_LINES:Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;

    const v2, 0x7f0b008b

    const v3, 0x7f0b008c

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;-><init>(Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;II)V

    sput-object v0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;->REGISTERED_DEVICE:Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;

    .line 55
    new-instance v0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;

    sget-object v1, Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;->SECTION:Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;

    const v2, 0x7f0b008a

    invoke-direct {v0, v1, v2, v4}, Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;-><init>(Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;II)V

    sput-object v0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;->APPLICATION_SECTION:Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;

    .line 56
    new-instance v0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;

    sget-object v1, Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;->TWO_LINES_CHECKBOX:Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;

    const v2, 0x7f0b0091

    const v3, 0x7f0b0092

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;-><init>(Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;II)V

    sput-object v0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;->VOLUME_KEYS:Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;

    return-void
.end method

.method private constructor <init>(Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;II)V
    .locals 0
    .parameter "viewType"
    .parameter "text1"
    .parameter "text2"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;->viewType:Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;

    .line 65
    iput p2, p0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;->text1:I

    .line 66
    iput p3, p0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;->text2:I

    .line 67
    return-void
.end method

.method static synthetic access$400()Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;->ACCOUNT_SECTION:Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;

    return-object v0
.end method

.method static synthetic access$500()Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;->REGISTERED_USER:Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;

    return-object v0
.end method

.method static synthetic access$600()Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;->REGISTERED_DEVICE:Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;

    return-object v0
.end method

.method static synthetic access$700()Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;->APPLICATION_SECTION:Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;

    return-object v0
.end method

.method static synthetic access$800()Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;->VOLUME_KEYS:Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;

    return-object v0
.end method
