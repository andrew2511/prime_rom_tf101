.class public Lcom/google/googlenav/capabilities/CapabilitiesControllerSdk11;
.super Lcom/google/googlenav/capabilities/CapabilitiesControllerSdk7;


# instance fields
.field private a:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/capabilities/CapabilitiesControllerSdk7;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/capabilities/CapabilitiesControllerSdk11;->a:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/capabilities/CapabilitiesControllerSdk11;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/capabilities/CapabilitiesControllerSdk11;->a:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/capabilities/CapabilitiesControllerSdk11;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
