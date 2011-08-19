.class public Lorg/easymock/EasyMock;
.super Ljava/lang/Object;
.source "EasyMock.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static and(BB)B
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 686
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/easymock/internal/LastControl;->reportAnd(I)V

    .line 687
    const/4 v0, 0x0

    return v0
.end method

.method public static and(CC)C
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 700
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/easymock/internal/LastControl;->reportAnd(I)V

    .line 701
    const/4 v0, 0x0

    return v0
.end method

.method public static and(DD)D
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 714
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/easymock/internal/LastControl;->reportAnd(I)V

    .line 715
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static and(FF)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 728
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/easymock/internal/LastControl;->reportAnd(I)V

    .line 729
    const/4 v0, 0x0

    return v0
.end method

.method public static and(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 742
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/easymock/internal/LastControl;->reportAnd(I)V

    .line 743
    const/4 v0, 0x0

    return v0
.end method

.method public static and(JJ)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 756
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/easymock/internal/LastControl;->reportAnd(I)V

    .line 757
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static and(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 786
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/easymock/internal/LastControl;->reportAnd(I)V

    .line 787
    const/4 v0, 0x0

    return-object v0
.end method

.method public static and(SS)S
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 770
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/easymock/internal/LastControl;->reportAnd(I)V

    .line 771
    const/4 v0, 0x0

    return v0
.end method

.method public static and(ZZ)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 672
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/easymock/internal/LastControl;->reportAnd(I)V

    .line 673
    const/4 v0, 0x0

    return v0
.end method

.method public static anyBoolean()Z
    .locals 1

    .prologue
    .line 186
    sget-object v0, Lorg/easymock/internal/matchers/Any;->ANY:Lorg/easymock/internal/matchers/Any;

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public static anyByte()B
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lorg/easymock/internal/matchers/Any;->ANY:Lorg/easymock/internal/matchers/Any;

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public static anyChar()C
    .locals 1

    .prologue
    .line 206
    sget-object v0, Lorg/easymock/internal/matchers/Any;->ANY:Lorg/easymock/internal/matchers/Any;

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public static anyDouble()D
    .locals 2

    .prologue
    .line 246
    sget-object v0, Lorg/easymock/internal/matchers/Any;->ANY:Lorg/easymock/internal/matchers/Any;

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 247
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static anyFloat()F
    .locals 1

    .prologue
    .line 236
    sget-object v0, Lorg/easymock/internal/matchers/Any;->ANY:Lorg/easymock/internal/matchers/Any;

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public static anyInt()I
    .locals 1

    .prologue
    .line 216
    sget-object v0, Lorg/easymock/internal/matchers/Any;->ANY:Lorg/easymock/internal/matchers/Any;

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public static anyLong()J
    .locals 2

    .prologue
    .line 226
    sget-object v0, Lorg/easymock/internal/matchers/Any;->ANY:Lorg/easymock/internal/matchers/Any;

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 227
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static anyObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 266
    sget-object v0, Lorg/easymock/internal/matchers/Any;->ANY:Lorg/easymock/internal/matchers/Any;

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 267
    const/4 v0, 0x0

    return-object v0
.end method

.method public static anyShort()S
    .locals 1

    .prologue
    .line 256
    sget-object v0, Lorg/easymock/internal/matchers/Any;->ANY:Lorg/easymock/internal/matchers/Any;

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public static aryEq([B)[B
    .locals 1
    .parameter

    .prologue
    .line 1158
    new-instance v0, Lorg/easymock/internal/matchers/ArrayEquals;

    invoke-direct {v0, p0}, Lorg/easymock/internal/matchers/ArrayEquals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 1159
    const/4 v0, 0x0

    return-object v0
.end method

.method public static aryEq([C)[C
    .locals 1
    .parameter

    .prologue
    .line 1171
    new-instance v0, Lorg/easymock/internal/matchers/ArrayEquals;

    invoke-direct {v0, p0}, Lorg/easymock/internal/matchers/ArrayEquals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 1172
    const/4 v0, 0x0

    return-object v0
.end method

.method public static aryEq([D)[D
    .locals 1
    .parameter

    .prologue
    .line 1184
    new-instance v0, Lorg/easymock/internal/matchers/ArrayEquals;

    invoke-direct {v0, p0}, Lorg/easymock/internal/matchers/ArrayEquals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 1185
    const/4 v0, 0x0

    return-object v0
.end method

.method public static aryEq([F)[F
    .locals 1
    .parameter

    .prologue
    .line 1197
    new-instance v0, Lorg/easymock/internal/matchers/ArrayEquals;

    invoke-direct {v0, p0}, Lorg/easymock/internal/matchers/ArrayEquals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 1198
    const/4 v0, 0x0

    return-object v0
.end method

.method public static aryEq([I)[I
    .locals 1
    .parameter

    .prologue
    .line 1210
    new-instance v0, Lorg/easymock/internal/matchers/ArrayEquals;

    invoke-direct {v0, p0}, Lorg/easymock/internal/matchers/ArrayEquals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 1211
    const/4 v0, 0x0

    return-object v0
.end method

.method public static aryEq([J)[J
    .locals 1
    .parameter

    .prologue
    .line 1223
    new-instance v0, Lorg/easymock/internal/matchers/ArrayEquals;

    invoke-direct {v0, p0}, Lorg/easymock/internal/matchers/ArrayEquals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 1224
    const/4 v0, 0x0

    return-object v0
.end method

.method public static aryEq([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 1251
    new-instance v0, Lorg/easymock/internal/matchers/ArrayEquals;

    invoke-direct {v0, p0}, Lorg/easymock/internal/matchers/ArrayEquals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 1252
    const/4 v0, 0x0

    return-object v0
.end method

.method public static aryEq([S)[S
    .locals 1
    .parameter

    .prologue
    .line 1236
    new-instance v0, Lorg/easymock/internal/matchers/ArrayEquals;

    invoke-direct {v0, p0}, Lorg/easymock/internal/matchers/ArrayEquals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 1237
    const/4 v0, 0x0

    return-object v0
.end method

.method public static aryEq([Z)[Z
    .locals 1
    .parameter

    .prologue
    .line 1145
    new-instance v0, Lorg/easymock/internal/matchers/ArrayEquals;

    invoke-direct {v0, p0}, Lorg/easymock/internal/matchers/ArrayEquals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 1146
    const/4 v0, 0x0

    return-object v0
.end method

.method public static capture(Lorg/easymock/Capture;)B
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/easymock/Capture",
            "<",
            "Ljava/lang/Byte;",
            ">;)B"
        }
    .end annotation

    .prologue
    .line 1478
    new-instance v0, Lorg/easymock/internal/matchers/Captures;

    invoke-direct {v0, p0}, Lorg/easymock/internal/matchers/Captures;-><init>(Lorg/easymock/Capture;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 1479
    const/4 v0, 0x0

    return v0
.end method

.method public static capture(Lorg/easymock/Capture;)C
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/easymock/Capture",
            "<",
            "Ljava/lang/Character;",
            ">;)C"
        }
    .end annotation

    .prologue
    .line 1489
    new-instance v0, Lorg/easymock/internal/matchers/Captures;

    invoke-direct {v0, p0}, Lorg/easymock/internal/matchers/Captures;-><init>(Lorg/easymock/Capture;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 1490
    const/4 v0, 0x0

    return v0
.end method

.method public static capture(Lorg/easymock/Capture;)D
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/easymock/Capture",
            "<",
            "Ljava/lang/Double;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 1467
    new-instance v0, Lorg/easymock/internal/matchers/Captures;

    invoke-direct {v0, p0}, Lorg/easymock/internal/matchers/Captures;-><init>(Lorg/easymock/Capture;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 1468
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static capture(Lorg/easymock/Capture;)F
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/easymock/Capture",
            "<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .prologue
    .line 1456
    new-instance v0, Lorg/easymock/internal/matchers/Captures;

    invoke-direct {v0, p0}, Lorg/easymock/internal/matchers/Captures;-><init>(Lorg/easymock/Capture;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 1457
    const/4 v0, 0x0

    return v0
.end method

.method public static capture(Lorg/easymock/Capture;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/easymock/Capture",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1434
    new-instance v0, Lorg/easymock/internal/matchers/Captures;

    invoke-direct {v0, p0}, Lorg/easymock/internal/matchers/Captures;-><init>(Lorg/easymock/Capture;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 1435
    const/4 v0, 0x0

    return v0
.end method

.method public static capture(Lorg/easymock/Capture;)J
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/easymock/Capture",
            "<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 1445
    new-instance v0, Lorg/easymock/internal/matchers/Captures;

    invoke-direct {v0, p0}, Lorg/easymock/internal/matchers/Captures;-><init>(Lorg/easymock/Capture;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 1446
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static capture(Lorg/easymock/Capture;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/easymock/Capture",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1423
    new-instance v0, Lorg/easymock/internal/matchers/Captures;

    invoke-direct {v0, p0}, Lorg/easymock/internal/matchers/Captures;-><init>(Lorg/easymock/Capture;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 1424
    const/4 v0, 0x0

    return-object v0
.end method

.method public static checkOrder(Ljava/lang/Object;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1586
    invoke-static {p0}, Lorg/easymock/EasyMock;->getControl(Ljava/lang/Object;)Lorg/easymock/internal/MocksControl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/easymock/internal/MocksControl;->checkOrder(Z)V

    .line 1587
    return-void
.end method

.method public static cmp(Ljava/lang/Object;Ljava/util/Comparator;Lorg/easymock/LogicalOperator;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/Comparator",
            "<-TT;>;",
            "Lorg/easymock/LogicalOperator;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1401
    new-instance v0, Lorg/easymock/internal/matchers/Compare;

    invoke-direct {v0, p0, p1, p2}, Lorg/easymock/internal/matchers/Compare;-><init>(Ljava/lang/Object;Ljava/util/Comparator;Lorg/easymock/LogicalOperator;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 1402
    const/4 v0, 0x0

    return-object v0
.end method

.method public static cmpEq(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(",
            "Ljava/lang/Comparable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1383
    new-instance v0, Lorg/easymock/internal/matchers/CompareEqual;

    invoke-direct {v0, p0}, Lorg/easymock/internal/matchers/CompareEqual;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 1384
    const/4 v0, 0x0

    return-object v0
.end method

.method public static contains(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 658
    new-instance v0, Lorg/easymock/internal/matchers/Contains;

    invoke-direct {v0, p0}, Lorg/easymock/internal/matchers/Contains;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 659
    const/4 v0, 0x0

    return-object v0
.end method

.method public static createControl()Lorg/easymock/IMocksControl;
    .locals 2

    .prologue
    .line 129
    new-instance v0, Lorg/easymock/internal/MocksControl;

    sget-object v1, Lorg/easymock/internal/MocksControl$MockType;->DEFAULT:Lorg/easymock/internal/MocksControl$MockType;

    invoke-direct {v0, v1}, Lorg/easymock/internal/MocksControl;-><init>(Lorg/easymock/internal/MocksControl$MockType;)V

    return-object v0
.end method

.method public static createMock(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {}, Lorg/easymock/EasyMock;->createControl()Lorg/easymock/IMocksControl;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/easymock/IMocksControl;->createMock(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static createMock(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 77
    invoke-static {}, Lorg/easymock/EasyMock;->createControl()Lorg/easymock/IMocksControl;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/easymock/IMocksControl;->createMock(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static createNiceControl()Lorg/easymock/IMocksControl;
    .locals 2

    .prologue
    .line 140
    new-instance v0, Lorg/easymock/internal/MocksControl;

    sget-object v1, Lorg/easymock/internal/MocksControl$MockType;->NICE:Lorg/easymock/internal/MocksControl$MockType;

    invoke-direct {v0, v1}, Lorg/easymock/internal/MocksControl;-><init>(Lorg/easymock/internal/MocksControl$MockType;)V

    return-object v0
.end method

.method public static createNiceMock(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 93
    invoke-static {}, Lorg/easymock/EasyMock;->createNiceControl()Lorg/easymock/IMocksControl;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/easymock/IMocksControl;->createMock(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static createNiceMock(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 111
    invoke-static {}, Lorg/easymock/EasyMock;->createNiceControl()Lorg/easymock/IMocksControl;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/easymock/IMocksControl;->createMock(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static createStrictControl()Lorg/easymock/IMocksControl;
    .locals 2

    .prologue
    .line 120
    new-instance v0, Lorg/easymock/internal/MocksControl;

    sget-object v1, Lorg/easymock/internal/MocksControl$MockType;->STRICT:Lorg/easymock/internal/MocksControl$MockType;

    invoke-direct {v0, v1}, Lorg/easymock/internal/MocksControl;-><init>(Lorg/easymock/internal/MocksControl$MockType;)V

    return-object v0
.end method

.method public static createStrictMock(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 29
    invoke-static {}, Lorg/easymock/EasyMock;->createStrictControl()Lorg/easymock/IMocksControl;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/easymock/IMocksControl;->createMock(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static createStrictMock(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {}, Lorg/easymock/EasyMock;->createStrictControl()Lorg/easymock/IMocksControl;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/easymock/IMocksControl;->createMock(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static endsWith(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1323
    new-instance v0, Lorg/easymock/internal/matchers/EndsWith;

    invoke-direct {v0, p0}, Lorg/easymock/internal/matchers/EndsWith;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 1324
    const/4 v0, 0x0

    return-object v0
.end method

.method public static eq(B)B
    .locals 2
    .parameter

    .prologue
    .line 1048
    new-instance v0, Lorg/easymock/internal/matchers/Equals;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/easymock/internal/matchers/Equals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 1049
    const/4 v0, 0x0

    return v0
.end method

.method public static eq(C)C
    .locals 2
    .parameter

    .prologue
    .line 1060
    new-instance v0, Lorg/easymock/internal/matchers/Equals;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/easymock/internal/matchers/Equals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 1061
    const/4 v0, 0x0

    return v0
.end method

.method public static eq(D)D
    .locals 2
    .parameter

    .prologue
    .line 1072
    new-instance v0, Lorg/easymock/internal/matchers/Equals;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/easymock/internal/matchers/Equals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 1073
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static eq(DD)D
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1339
    new-instance v0, Lorg/easymock/internal/matchers/EqualsWithDelta;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/easymock/internal/matchers/EqualsWithDelta;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 1340
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static eq(F)F
    .locals 2
    .parameter

    .prologue
    .line 1084
    new-instance v0, Lorg/easymock/internal/matchers/Equals;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/easymock/internal/matchers/Equals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 1085
    const/4 v0, 0x0

    return v0
.end method

.method public static eq(FF)F
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1355
    new-instance v0, Lorg/easymock/internal/matchers/EqualsWithDelta;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/easymock/internal/matchers/EqualsWithDelta;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 1356
    const/4 v0, 0x0

    return v0
.end method

.method public static eq(I)I
    .locals 2
    .parameter

    .prologue
    .line 1096
    new-instance v0, Lorg/easymock/internal/matchers/Equals;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/easymock/internal/matchers/Equals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 1097
    const/4 v0, 0x0

    return v0
.end method

.method public static eq(J)J
    .locals 2
    .parameter

    .prologue
    .line 1108
    new-instance v0, Lorg/easymock/internal/matchers/Equals;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/easymock/internal/matchers/Equals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 1109
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static eq(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 1132
    new-instance v0, Lorg/easymock/internal/matchers/Equals;

    invoke-direct {v0, p0}, Lorg/easymock/internal/matchers/Equals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 1133
    const/4 v0, 0x0

    return-object v0
.end method

.method public static eq(S)S
    .locals 2
    .parameter

    .prologue
    .line 1120
    new-instance v0, Lorg/easymock/internal/matchers/Equals;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/easymock/internal/matchers/Equals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 1121
    const/4 v0, 0x0

    return v0
.end method

.method public static eq(Z)Z
    .locals 2
    .parameter

    .prologue
    .line 1036
    new-instance v0, Lorg/easymock/internal/matchers/Equals;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/easymock/internal/matchers/Equals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 1037
    const/4 v0, 0x0

    return v0
.end method

.method public static expect(Ljava/lang/Object;)Lorg/easymock/IExpectationSetters;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/easymock/IExpectationSetters",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 156
    invoke-static {}, Lorg/easymock/EasyMock;->getControlForLastCall()Lorg/easymock/IExpectationSetters;

    move-result-object v0

    return-object v0
.end method

.method public static expectLastCall()Lorg/easymock/IExpectationSetters;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/easymock/IExpectationSetters",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 167
    invoke-static {}, Lorg/easymock/EasyMock;->getControlForLastCall()Lorg/easymock/IExpectationSetters;

    move-result-object v0

    return-object v0
.end method

.method public static find(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1284
    new-instance v0, Lorg/easymock/internal/matchers/Find;

    invoke-direct {v0, p0}, Lorg/easymock/internal/matchers/Find;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 1285
    const/4 v0, 0x0

    return-object v0
.end method

.method public static geq(B)B
    .locals 2
    .parameter

    .prologue
    .line 292
    new-instance v0, Lorg/easymock/internal/matchers/GreaterOrEqual;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/easymock/internal/matchers/GreaterOrEqual;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method public static geq(D)D
    .locals 2
    .parameter

    .prologue
    .line 305
    new-instance v0, Lorg/easymock/internal/matchers/GreaterOrEqual;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/easymock/internal/matchers/GreaterOrEqual;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 306
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static geq(F)F
    .locals 2
    .parameter

    .prologue
    .line 318
    new-instance v0, Lorg/easymock/internal/matchers/GreaterOrEqual;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/easymock/internal/matchers/GreaterOrEqual;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 319
    const/4 v0, 0x0

    return v0
.end method

.method public static geq(I)I
    .locals 2
    .parameter

    .prologue
    .line 331
    new-instance v0, Lorg/easymock/internal/matchers/GreaterOrEqual;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/easymock/internal/matchers/GreaterOrEqual;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 332
    const/4 v0, 0x0

    return v0
.end method

.method public static geq(J)J
    .locals 2
    .parameter

    .prologue
    .line 344
    new-instance v0, Lorg/easymock/internal/matchers/GreaterOrEqual;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/easymock/internal/matchers/GreaterOrEqual;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 345
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static geq(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(",
            "Ljava/lang/Comparable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 279
    new-instance v0, Lorg/easymock/internal/matchers/GreaterOrEqual;

    invoke-direct {v0, p0}, Lorg/easymock/internal/matchers/GreaterOrEqual;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 280
    const/4 v0, 0x0

    return-object v0
.end method

.method public static geq(S)S
    .locals 2
    .parameter

    .prologue
    .line 357
    new-instance v0, Lorg/easymock/internal/matchers/GreaterOrEqual;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/easymock/internal/matchers/GreaterOrEqual;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 358
    const/4 v0, 0x0

    return v0
.end method

.method private static getControl(Ljava/lang/Object;)Lorg/easymock/internal/MocksControl;
    .locals 1
    .parameter

    .prologue
    .line 1600
    invoke-static {p0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p0

    check-cast p0, Lorg/easymock/internal/ObjectMethodsFilter;

    invoke-virtual {p0}, Lorg/easymock/internal/ObjectMethodsFilter;->getDelegate()Lorg/easymock/internal/MockInvocationHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/easymock/internal/MockInvocationHandler;->getControl()Lorg/easymock/internal/MocksControl;

    move-result-object v0

    return-object v0
.end method

.method private static getControlForLastCall()Lorg/easymock/IExpectationSetters;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/easymock/IExpectationSetters",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 172
    invoke-static {}, Lorg/easymock/internal/LastControl;->lastControl()Lorg/easymock/internal/MocksControl;

    move-result-object v0

    .line 173
    if-nez v0, :cond_0

    .line 174
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no last call on a mock available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    return-object v0
.end method

.method public static getCurrentArguments()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1614
    invoke-static {}, Lorg/easymock/internal/LastControl;->getCurrentArguments()[Ljava/lang/Object;

    move-result-object v0

    .line 1615
    if-nez v0, :cond_0

    .line 1616
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "current arguments are only available when executing callback methods"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1619
    :cond_0
    return-object v0
.end method

.method public static gt(B)B
    .locals 2
    .parameter

    .prologue
    .line 474
    new-instance v0, Lorg/easymock/internal/matchers/GreaterThan;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/easymock/internal/matchers/GreaterThan;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 475
    const/4 v0, 0x0

    return v0
.end method

.method public static gt(D)D
    .locals 2
    .parameter

    .prologue
    .line 487
    new-instance v0, Lorg/easymock/internal/matchers/GreaterThan;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/easymock/internal/matchers/GreaterThan;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 488
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static gt(F)F
    .locals 2
    .parameter

    .prologue
    .line 500
    new-instance v0, Lorg/easymock/internal/matchers/GreaterThan;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/easymock/internal/matchers/GreaterThan;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 501
    const/4 v0, 0x0

    return v0
.end method

.method public static gt(I)I
    .locals 2
    .parameter

    .prologue
    .line 513
    new-instance v0, Lorg/easymock/internal/matchers/GreaterThan;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/easymock/internal/matchers/GreaterThan;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 514
    const/4 v0, 0x0

    return v0
.end method

.method public static gt(J)J
    .locals 2
    .parameter

    .prologue
    .line 526
    new-instance v0, Lorg/easymock/internal/matchers/GreaterThan;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/easymock/internal/matchers/GreaterThan;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 527
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static gt(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(",
            "Ljava/lang/Comparable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 461
    new-instance v0, Lorg/easymock/internal/matchers/GreaterThan;

    invoke-direct {v0, p0}, Lorg/easymock/internal/matchers/GreaterThan;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 462
    const/4 v0, 0x0

    return-object v0
.end method

.method public static gt(S)S
    .locals 2
    .parameter

    .prologue
    .line 539
    new-instance v0, Lorg/easymock/internal/matchers/GreaterThan;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/easymock/internal/matchers/GreaterThan;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 540
    const/4 v0, 0x0

    return v0
.end method

.method public static isA(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 645
    new-instance v0, Lorg/easymock/internal/matchers/InstanceOf;

    invoke-direct {v0, p0}, Lorg/easymock/internal/matchers/InstanceOf;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 646
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isNull()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 1261
    sget-object v0, Lorg/easymock/internal/matchers/Null;->NULL:Lorg/easymock/internal/matchers/Null;

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 1262
    const/4 v0, 0x0

    return-object v0
.end method

.method public static leq(B)B
    .locals 2
    .parameter

    .prologue
    .line 383
    new-instance v0, Lorg/easymock/internal/matchers/LessOrEqual;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/easymock/internal/matchers/LessOrEqual;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 384
    const/4 v0, 0x0

    return v0
.end method

.method public static leq(D)D
    .locals 2
    .parameter

    .prologue
    .line 396
    new-instance v0, Lorg/easymock/internal/matchers/LessOrEqual;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/easymock/internal/matchers/LessOrEqual;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 397
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static leq(F)F
    .locals 2
    .parameter

    .prologue
    .line 409
    new-instance v0, Lorg/easymock/internal/matchers/LessOrEqual;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/easymock/internal/matchers/LessOrEqual;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 410
    const/4 v0, 0x0

    return v0
.end method

.method public static leq(I)I
    .locals 2
    .parameter

    .prologue
    .line 422
    new-instance v0, Lorg/easymock/internal/matchers/LessOrEqual;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/easymock/internal/matchers/LessOrEqual;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 423
    const/4 v0, 0x0

    return v0
.end method

.method public static leq(J)J
    .locals 2
    .parameter

    .prologue
    .line 435
    new-instance v0, Lorg/easymock/internal/matchers/LessOrEqual;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/easymock/internal/matchers/LessOrEqual;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 436
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static leq(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(",
            "Ljava/lang/Comparable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 370
    new-instance v0, Lorg/easymock/internal/matchers/LessOrEqual;

    invoke-direct {v0, p0}, Lorg/easymock/internal/matchers/LessOrEqual;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 371
    const/4 v0, 0x0

    return-object v0
.end method

.method public static leq(S)S
    .locals 2
    .parameter

    .prologue
    .line 448
    new-instance v0, Lorg/easymock/internal/matchers/LessOrEqual;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/easymock/internal/matchers/LessOrEqual;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 449
    const/4 v0, 0x0

    return v0
.end method

.method public static lt(B)B
    .locals 2
    .parameter

    .prologue
    .line 565
    new-instance v0, Lorg/easymock/internal/matchers/LessThan;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/easymock/internal/matchers/LessThan;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 566
    const/4 v0, 0x0

    return v0
.end method

.method public static lt(D)D
    .locals 2
    .parameter

    .prologue
    .line 578
    new-instance v0, Lorg/easymock/internal/matchers/LessThan;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/easymock/internal/matchers/LessThan;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 579
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static lt(F)F
    .locals 2
    .parameter

    .prologue
    .line 591
    new-instance v0, Lorg/easymock/internal/matchers/LessThan;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/easymock/internal/matchers/LessThan;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 592
    const/4 v0, 0x0

    return v0
.end method

.method public static lt(I)I
    .locals 2
    .parameter

    .prologue
    .line 604
    new-instance v0, Lorg/easymock/internal/matchers/LessThan;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/easymock/internal/matchers/LessThan;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 605
    const/4 v0, 0x0

    return v0
.end method

.method public static lt(J)J
    .locals 2
    .parameter

    .prologue
    .line 617
    new-instance v0, Lorg/easymock/internal/matchers/LessThan;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/easymock/internal/matchers/LessThan;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 618
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static lt(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(",
            "Ljava/lang/Comparable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 552
    new-instance v0, Lorg/easymock/internal/matchers/LessThan;

    invoke-direct {v0, p0}, Lorg/easymock/internal/matchers/LessThan;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 553
    const/4 v0, 0x0

    return-object v0
.end method

.method public static lt(S)S
    .locals 2
    .parameter

    .prologue
    .line 630
    new-instance v0, Lorg/easymock/internal/matchers/LessThan;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/easymock/internal/matchers/LessThan;-><init>(Ljava/lang/Comparable;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 631
    const/4 v0, 0x0

    return v0
.end method

.method public static makeThreadSafe(Ljava/lang/Object;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1630
    invoke-static {p0}, Lorg/easymock/EasyMock;->getControl(Ljava/lang/Object;)Lorg/easymock/internal/MocksControl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/easymock/internal/MocksControl;->makeThreadSafe(Z)V

    .line 1631
    return-void
.end method

.method public static matches(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1297
    new-instance v0, Lorg/easymock/internal/matchers/Matches;

    invoke-direct {v0, p0}, Lorg/easymock/internal/matchers/Matches;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 1298
    const/4 v0, 0x0

    return-object v0
.end method

.method public static not(B)B
    .locals 1
    .parameter

    .prologue
    .line 938
    invoke-static {}, Lorg/easymock/internal/LastControl;->reportNot()V

    .line 939
    const/4 v0, 0x0

    return v0
.end method

.method public static not(C)C
    .locals 1
    .parameter

    .prologue
    .line 950
    invoke-static {}, Lorg/easymock/internal/LastControl;->reportNot()V

    .line 951
    const/4 v0, 0x0

    return v0
.end method

.method public static not(D)D
    .locals 2
    .parameter

    .prologue
    .line 962
    invoke-static {}, Lorg/easymock/internal/LastControl;->reportNot()V

    .line 963
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static not(F)F
    .locals 0
    .parameter

    .prologue
    .line 974
    invoke-static {}, Lorg/easymock/internal/LastControl;->reportNot()V

    .line 975
    return p0
.end method

.method public static not(I)I
    .locals 1
    .parameter

    .prologue
    .line 986
    invoke-static {}, Lorg/easymock/internal/LastControl;->reportNot()V

    .line 987
    const/4 v0, 0x0

    return v0
.end method

.method public static not(J)J
    .locals 2
    .parameter

    .prologue
    .line 998
    invoke-static {}, Lorg/easymock/internal/LastControl;->reportNot()V

    .line 999
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static not(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 1024
    invoke-static {}, Lorg/easymock/internal/LastControl;->reportNot()V

    .line 1025
    const/4 v0, 0x0

    return-object v0
.end method

.method public static not(S)S
    .locals 1
    .parameter

    .prologue
    .line 1010
    invoke-static {}, Lorg/easymock/internal/LastControl;->reportNot()V

    .line 1011
    const/4 v0, 0x0

    return v0
.end method

.method public static not(Z)Z
    .locals 1
    .parameter

    .prologue
    .line 926
    invoke-static {}, Lorg/easymock/internal/LastControl;->reportNot()V

    .line 927
    const/4 v0, 0x0

    return v0
.end method

.method public static notNull()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 1271
    sget-object v0, Lorg/easymock/internal/matchers/NotNull;->NOT_NULL:Lorg/easymock/internal/matchers/NotNull;

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 1272
    const/4 v0, 0x0

    return-object v0
.end method

.method public static or(BB)B
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 814
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/easymock/internal/LastControl;->reportOr(I)V

    .line 815
    const/4 v0, 0x0

    return v0
.end method

.method public static or(CC)C
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 828
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/easymock/internal/LastControl;->reportOr(I)V

    .line 829
    const/4 v0, 0x0

    return v0
.end method

.method public static or(DD)D
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 842
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/easymock/internal/LastControl;->reportOr(I)V

    .line 843
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static or(FF)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 856
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/easymock/internal/LastControl;->reportOr(I)V

    .line 857
    const/4 v0, 0x0

    return v0
.end method

.method public static or(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 870
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/easymock/internal/LastControl;->reportOr(I)V

    .line 871
    return p0
.end method

.method public static or(JJ)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 884
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/easymock/internal/LastControl;->reportOr(I)V

    .line 885
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static or(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 914
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/easymock/internal/LastControl;->reportOr(I)V

    .line 915
    const/4 v0, 0x0

    return-object v0
.end method

.method public static or(SS)S
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 898
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/easymock/internal/LastControl;->reportOr(I)V

    .line 899
    const/4 v0, 0x0

    return v0
.end method

.method public static or(ZZ)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 800
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/easymock/internal/LastControl;->reportOr(I)V

    .line 801
    const/4 v0, 0x0

    return v0
.end method

.method public static varargs replay([Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 1501
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 1502
    invoke-static {v2}, Lorg/easymock/EasyMock;->getControl(Ljava/lang/Object;)Lorg/easymock/internal/MocksControl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/easymock/internal/MocksControl;->replay()V

    .line 1501
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1504
    :cond_0
    return-void
.end method

.method public static reportMatcher(Lorg/easymock/IArgumentMatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 1596
    invoke-static {p0}, Lorg/easymock/internal/LastControl;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 1597
    return-void
.end method

.method public static varargs reset([Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 1514
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 1515
    invoke-static {v2}, Lorg/easymock/EasyMock;->getControl(Ljava/lang/Object;)Lorg/easymock/internal/MocksControl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/easymock/internal/MocksControl;->reset()V

    .line 1514
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1517
    :cond_0
    return-void
.end method

.method public static varargs resetToDefault([Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 1542
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 1543
    invoke-static {v2}, Lorg/easymock/EasyMock;->getControl(Ljava/lang/Object;)Lorg/easymock/internal/MocksControl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/easymock/internal/MocksControl;->resetToDefault()V

    .line 1542
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1545
    :cond_0
    return-void
.end method

.method public static varargs resetToNice([Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 1528
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 1529
    invoke-static {v2}, Lorg/easymock/EasyMock;->getControl(Ljava/lang/Object;)Lorg/easymock/internal/MocksControl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/easymock/internal/MocksControl;->resetToNice()V

    .line 1528
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1531
    :cond_0
    return-void
.end method

.method public static varargs resetToStrict([Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 1556
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 1557
    invoke-static {v2}, Lorg/easymock/EasyMock;->getControl(Ljava/lang/Object;)Lorg/easymock/internal/MocksControl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/easymock/internal/MocksControl;->resetToStrict()V

    .line 1556
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1559
    :cond_0
    return-void
.end method

.method public static same(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 1370
    new-instance v0, Lorg/easymock/internal/matchers/Same;

    invoke-direct {v0, p0}, Lorg/easymock/internal/matchers/Same;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 1371
    const/4 v0, 0x0

    return-object v0
.end method

.method public static startsWith(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1310
    new-instance v0, Lorg/easymock/internal/matchers/StartsWith;

    invoke-direct {v0, p0}, Lorg/easymock/internal/matchers/StartsWith;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/easymock/EasyMock;->reportMatcher(Lorg/easymock/IArgumentMatcher;)V

    .line 1311
    const/4 v0, 0x0

    return-object v0
.end method

.method public static varargs verify([Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 1569
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 1570
    invoke-static {v2}, Lorg/easymock/EasyMock;->getControl(Ljava/lang/Object;)Lorg/easymock/internal/MocksControl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/easymock/internal/MocksControl;->verify()V

    .line 1569
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1572
    :cond_0
    return-void
.end method
