.class Landroid/webkit/CookieManager$Cookie;
.super Ljava/lang/Object;
.source "CookieManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/CookieManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Cookie"
.end annotation


# static fields
.field static final MODE_DELETED:B = 0x2t

.field static final MODE_NEW:B = 0x0t

.field static final MODE_NORMAL:B = 0x1t

.field static final MODE_REPLACED:B = 0x3t


# instance fields
.field domain:Ljava/lang/String;

.field expires:J

.field lastAcessTime:J

.field lastUpdateTime:J

.field mode:B

.field name:Ljava/lang/String;

.field path:Ljava/lang/String;

.field secure:Z

.field value:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "defaultDomain"
    .parameter "defaultPath"

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    .line 151
    iput-object p2, p0, Landroid/webkit/CookieManager$Cookie;->path:Ljava/lang/String;

    .line 152
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/webkit/CookieManager$Cookie;->expires:J

    .line 153
    return-void
.end method


# virtual methods
.method domainMatch(Ljava/lang/String;)Z
    .registers 8
    .parameter "urlHost"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 166
    iget-object v2, p0, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 167
    iget-object v2, p0, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 168
    iget-object v2, p0, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 169
    .local v0, len:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 170
    .local v1, urlLen:I
    sub-int v2, v0, v4

    if-le v1, v2, :cond_34

    .line 172
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_32

    move v2, v4

    .line 179
    .end local v0           #len:I
    .end local v1           #urlLen:I
    :goto_31
    return v2

    .restart local v0       #len:I
    .restart local v1       #urlLen:I
    :cond_32
    move v2, v5

    .line 172
    goto :goto_31

    :cond_34
    move v2, v4

    .line 174
    goto :goto_31

    .end local v0           #len:I
    .end local v1           #urlLen:I
    :cond_36
    move v2, v5

    .line 176
    goto :goto_31

    .line 179
    :cond_38
    iget-object v2, p0, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_31
.end method

.method exactMatch(Landroid/webkit/CookieManager$Cookie;)Z
    .registers 7
    .parameter "in"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 160
    iget-object v1, p0, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    if-nez v1, :cond_32

    move v1, v4

    :goto_7
    iget-object v2, p1, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    if-nez v2, :cond_34

    move v2, v4

    :goto_c
    xor-int/2addr v1, v2

    if-nez v1, :cond_36

    move v0, v4

    .line 161
    .local v0, valuesMatch:Z
    :goto_10
    iget-object v1, p0, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    iget-object v2, p1, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    iget-object v1, p0, Landroid/webkit/CookieManager$Cookie;->path:Ljava/lang/String;

    iget-object v2, p1, Landroid/webkit/CookieManager$Cookie;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    iget-object v1, p0, Landroid/webkit/CookieManager$Cookie;->name:Ljava/lang/String;

    iget-object v2, p1, Landroid/webkit/CookieManager$Cookie;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    if-eqz v0, :cond_38

    move v1, v4

    :goto_31
    return v1

    .end local v0           #valuesMatch:Z
    :cond_32
    move v1, v3

    .line 160
    goto :goto_7

    :cond_34
    move v2, v3

    goto :goto_c

    :cond_36
    move v0, v3

    goto :goto_10

    .restart local v0       #valuesMatch:Z
    :cond_38
    move v1, v3

    .line 161
    goto :goto_31
.end method

.method pathMatch(Ljava/lang/String;)Z
    .registers 9
    .parameter "urlPath"

    .prologue
    const/16 v6, 0x2f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 184
    iget-object v2, p0, Landroid/webkit/CookieManager$Cookie;->path:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 185
    iget-object v2, p0, Landroid/webkit/CookieManager$Cookie;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 186
    .local v0, len:I
    if-nez v0, :cond_1e

    .line 187
    const-string/jumbo v2, "webkit"

    const-string v3, "Empty cookie path"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 197
    .end local v0           #len:I
    :goto_1d
    return v2

    .line 190
    .restart local v0       #len:I
    :cond_1e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 191
    .local v1, urlLen:I
    iget-object v2, p0, Landroid/webkit/CookieManager$Cookie;->path:Ljava/lang/String;

    sub-int v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v6, :cond_38

    if-le v1, v0, :cond_38

    .line 193
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_36

    move v2, v5

    goto :goto_1d

    :cond_36
    move v2, v4

    goto :goto_1d

    :cond_38
    move v2, v5

    .line 195
    goto :goto_1d

    .end local v0           #len:I
    .end local v1           #urlLen:I
    :cond_3a
    move v2, v4

    .line 197
    goto :goto_1d
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "domain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/CookieManager$Cookie;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/CookieManager$Cookie;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
