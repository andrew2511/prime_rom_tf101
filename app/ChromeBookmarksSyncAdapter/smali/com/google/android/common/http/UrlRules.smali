.class public Lcom/google/android/common/http/UrlRules;
.super Ljava/lang/Object;
.source "UrlRules.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/common/http/UrlRules$Rule;,
        Lcom/google/android/common/http/UrlRules$RuleFormatException;
    }
.end annotation


# static fields
.field private static final PATTERN_SPACE_PLUS:Ljava/util/regex/Pattern;

.field private static final RULE_PATTERN:Ljava/util/regex/Pattern;

.field private static sCachedRules:Lcom/google/android/common/http/UrlRules;

.field private static sCachedVersionToken:Ljava/lang/Object;


# instance fields
.field private final mPattern:Ljava/util/regex/Pattern;

.field private final mRules:[Lcom/google/android/common/http/UrlRules$Rule;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 136
    const-string v0, " +"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/common/http/UrlRules;->PATTERN_SPACE_PLUS:Ljava/util/regex/Pattern;

    .line 137
    const-string v0, "\\W"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/common/http/UrlRules;->RULE_PATTERN:Ljava/util/regex/Pattern;

    .line 140
    new-instance v0, Lcom/google/android/common/http/UrlRules;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/common/http/UrlRules$Rule;

    invoke-direct {v0, v1}, Lcom/google/android/common/http/UrlRules;-><init>([Lcom/google/android/common/http/UrlRules$Rule;)V

    sput-object v0, Lcom/google/android/common/http/UrlRules;->sCachedRules:Lcom/google/android/common/http/UrlRules;

    return-void
.end method

.method public constructor <init>([Lcom/google/android/common/http/UrlRules$Rule;)V
    .locals 4
    .parameter "rules"

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .local v1, pattern:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 163
    if-lez v0, :cond_0

    const-string v2, ")|("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    :cond_0
    sget-object v2, Lcom/google/android/common/http/UrlRules;->RULE_PATTERN:Ljava/util/regex/Pattern;

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/google/android/common/http/UrlRules$Rule;->mPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, "\\\\$0"

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_1
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/common/http/UrlRules;->mPattern:Ljava/util/regex/Pattern;

    .line 167
    iput-object p1, p0, Lcom/google/android/common/http/UrlRules;->mRules:[Lcom/google/android/common/http/UrlRules$Rule;

    .line 168
    return-void
.end method

.method static synthetic access$000()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/google/android/common/http/UrlRules;->PATTERN_SPACE_PLUS:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static declared-synchronized getRules(Landroid/content/ContentResolver;)Lcom/google/android/common/http/UrlRules;
    .locals 12
    .parameter "resolver"

    .prologue
    .line 193
    const-class v8, Lcom/google/android/common/http/UrlRules;

    monitor-enter v8

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gsf/Gservices;->getVersionToken(Landroid/content/ContentResolver;)Ljava/lang/Object;

    move-result-object v7

    .line 194
    .local v7, versionToken:Ljava/lang/Object;
    sget-object v9, Lcom/google/android/common/http/UrlRules;->sCachedVersionToken:Ljava/lang/Object;

    if-ne v7, v9, :cond_1

    .line 196
    const-string v9, "UrlRules"

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 197
    const-string v9, "UrlRules"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Using cached rules, versionToken: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    sget-object v9, Lcom/google/android/common/http/UrlRules;->sCachedRules:Lcom/google/android/common/http/UrlRules;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    .end local p0
    :goto_0
    monitor-exit v8

    return-object v9

    .line 202
    .restart local p0
    :cond_1
    :try_start_1
    const-string v9, "UrlRules"

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 203
    const-string v9, "UrlRules"

    const-string v10, "Scanning for Gservices \"url:*\" rules"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_2
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "url:"

    aput-object v11, v9, v10

    invoke-static {p0, v9}, Lcom/google/android/gsf/Gservices;->getStringsByPrefix(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 207
    .local v5, urlRules:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v4, rules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/common/http/UrlRules$Rule;>;"
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local p0
    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v9, 0x4

    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 211
    .local v3, name:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 212
    .local v6, value:Ljava/lang/String;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_3

    .line 213
    const-string v9, "UrlRules"

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "UrlRules"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  Rule "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_4
    new-instance v9, Lcom/google/android/common/http/UrlRules$Rule;

    invoke-direct {v9, v3, v6}, Lcom/google/android/common/http/UrlRules$Rule;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/android/common/http/UrlRules$RuleFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 215
    .end local v3           #name:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 217
    .local v1, exc:Lcom/google/android/common/http/UrlRules$RuleFormatException;
    :try_start_3
    const-string v9, "UrlRules"

    const-string v10, "Invalid rule from Gservices"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 193
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #exc:Lcom/google/android/common/http/UrlRules$RuleFormatException;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #rules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/common/http/UrlRules$Rule;>;"
    .end local v5           #urlRules:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7           #versionToken:Ljava/lang/Object;
    :catchall_0
    move-exception v9

    monitor-exit v8

    throw v9

    .line 220
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #rules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/common/http/UrlRules$Rule;>;"
    .restart local v5       #urlRules:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7       #versionToken:Ljava/lang/Object;
    :cond_5
    :try_start_4
    new-instance v9, Lcom/google/android/common/http/UrlRules;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Lcom/google/android/common/http/UrlRules$Rule;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/android/common/http/UrlRules$Rule;

    invoke-direct {v9, p0}, Lcom/google/android/common/http/UrlRules;-><init>([Lcom/google/android/common/http/UrlRules$Rule;)V

    sput-object v9, Lcom/google/android/common/http/UrlRules;->sCachedRules:Lcom/google/android/common/http/UrlRules;

    .line 221
    sput-object v7, Lcom/google/android/common/http/UrlRules;->sCachedVersionToken:Ljava/lang/Object;

    .line 222
    const-string v9, "UrlRules"

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 223
    const-string v9, "UrlRules"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "New rules stored, versionToken: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_6
    sget-object v9, Lcom/google/android/common/http/UrlRules;->sCachedRules:Lcom/google/android/common/http/UrlRules;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public matchRule(Ljava/lang/String;)Lcom/google/android/common/http/UrlRules$Rule;
    .locals 3
    .parameter "url"

    .prologue
    .line 176
    iget-object v2, p0, Lcom/google/android/common/http/UrlRules;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 177
    .local v1, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/android/common/http/UrlRules;->mRules:[Lcom/google/android/common/http/UrlRules$Rule;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 179
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 180
    iget-object v2, p0, Lcom/google/android/common/http/UrlRules;->mRules:[Lcom/google/android/common/http/UrlRules$Rule;

    aget-object v2, v2, v0

    .line 184
    .end local v0           #i:I
    :goto_1
    return-object v2

    .line 178
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    .end local v0           #i:I
    :cond_1
    sget-object v2, Lcom/google/android/common/http/UrlRules$Rule;->DEFAULT:Lcom/google/android/common/http/UrlRules$Rule;

    goto :goto_1
.end method
