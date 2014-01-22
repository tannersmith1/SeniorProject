select player.username, party.partyname
from player
inner join player_party on player.playerID = player_party.playerID
inner join party on party.partyid = player_party.partyID
where player.username = "Tanner";