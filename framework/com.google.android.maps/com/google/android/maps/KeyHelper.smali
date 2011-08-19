.class Lcom/google/android/maps/KeyHelper;
.super Ljava/lang/Object;
.source "KeyHelper.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method static getSignatureFingerprint(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "pm"
    .parameter "packageName"

    .prologue
    const/4 v8, 0x0

    .line 47
    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 48
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_a

    move-object v6, v8

    .line 72
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :goto_9
    return-object v6

    .line 51
    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    :cond_a
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_13

    .line 52
    const-string v6, "SYSTEM"

    goto :goto_9

    .line 54
    :cond_13
    const/16 v6, 0x40

    invoke-virtual {p0, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 55
    .local v4, pi:Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_2b

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v6, :cond_2b

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v6, v6

    if-eqz v6, :cond_2b

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    if-nez v6, :cond_2d

    :cond_2b
    move-object v6, v8

    .line 57
    goto :goto_9

    .line 59
    :cond_2d
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    .line 60
    .local v5, signature:[B
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 61
    .local v3, md:Ljava/security/MessageDigest;
    if-nez v3, :cond_40

    move-object v6, v8

    .line 62
    goto :goto_9

    .line 64
    :cond_40
    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 65
    .local v1, digest:[B
    if-nez v1, :cond_48

    move-object v6, v8

    .line 66
    goto :goto_9

    .line 68
    :cond_48
    invoke-static {v1}, Lcom/google/android/maps/KeyHelper;->toHex([B)Ljava/lang/String;
    :try_end_4b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_4b} :catch_4d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_4b} :catch_51

    move-result-object v6

    goto :goto_9

    .line 69
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v1           #digest:[B
    .end local v3           #md:Ljava/security/MessageDigest;
    .end local v4           #pi:Landroid/content/pm/PackageInfo;
    .end local v5           #signature:[B
    :catch_4d
    move-exception v6

    move-object v2, v6

    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v6, v8

    .line 70
    goto :goto_9

    .line 71
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_51
    move-exception v6

    move-object v2, v6

    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    move-object v6, v8

    .line 72
    goto :goto_9
.end method

.method private static toHex([B)Ljava/lang/String;
    .registers 10
    .parameter "bytes"

    .prologue
    .line 80
    new-instance v4, Ljava/lang/StringBuffer;

    array-length v5, p0

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 81
    .local v4, sb:Ljava/lang/StringBuffer;
    move-object v0, p0

    .local v0, arr$:[B
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_b
    if-ge v2, v3, :cond_25

    aget-byte v1, v0, v2

    .line 82
    .local v1, b:B
    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 84
    .end local v1           #b:B
    :cond_25
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
