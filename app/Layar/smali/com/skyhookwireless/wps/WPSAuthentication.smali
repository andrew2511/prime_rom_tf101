.class public final Lcom/skyhookwireless/wps/WPSAuthentication;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5dbadbf29b2ff78aL


# instance fields
.field private final _sdka:Ljava/lang/String;

.field private final _sdkb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/skyhookwireless/wps/WPSAuthentication;->_sdka:Ljava/lang/String;

    iput-object p2, p0, Lcom/skyhookwireless/wps/WPSAuthentication;->_sdkb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    :try_start_0
    check-cast p1, Lcom/skyhookwireless/wps/WPSAuthentication;

    iget-object v0, p0, Lcom/skyhookwireless/wps/WPSAuthentication;->_sdka:Ljava/lang/String;

    iget-object v1, p1, Lcom/skyhookwireless/wps/WPSAuthentication;->_sdka:Ljava/lang/String;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/skyhookwireless/wps/WPSAuthentication;->_sdka:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/skyhookwireless/wps/WPSAuthentication;->_sdka:Ljava/lang/String;

    iget-object v1, p1, Lcom/skyhookwireless/wps/WPSAuthentication;->_sdka:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/skyhookwireless/wps/WPSAuthentication;->_sdkb:Ljava/lang/String;

    iget-object v1, p1, Lcom/skyhookwireless/wps/WPSAuthentication;->_sdkb:Ljava/lang/String;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/skyhookwireless/wps/WPSAuthentication;->_sdkb:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/skyhookwireless/wps/WPSAuthentication;->_sdkb:Ljava/lang/String;

    iget-object v1, p1, Lcom/skyhookwireless/wps/WPSAuthentication;->_sdkb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/WPSAuthentication;->_sdkb:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/WPSAuthentication;->_sdka:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x11

    mul-int/lit8 v0, v0, 0x25

    iget-object v0, p0, Lcom/skyhookwireless/wps/WPSAuthentication;->_sdka:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x275

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/skyhookwireless/wps/WPSAuthentication;->_sdkb:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
