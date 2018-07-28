from absl import app

from pysc2.agents import base_agent
from pysc2.env import sc2_env
from pysc2.lib import actions, features


class Agent(base_agent.BaseAgent):

    def __init__(self):
        super(Agent, self).__init__()
        print('initialized')

    def step(self, obs):
        super(Agent, self).step(obs)

        if obs.first():
            print("first frame")

        if obs.last():
            print("last frame")

        return actions.FUNCTIONS.no_op()


def main(unused_argv):
    agent = Agent()
    screen_size = 84
    minimap_size = 64

    try:
        while True:
            with sc2_env.SC2Env(
                    map_name="MoveToBeacon",
                    players=[sc2_env.Agent(sc2_env.Race.zerg)],
                    agent_interface_format=features.AgentInterfaceFormat(
                        feature_dimensions=features.Dimensions(screen=screen_size,
                                                               minimap=minimap_size),
                        use_feature_units=True),
                    step_mul=8,
                    game_steps_per_episode=0,
                    visualize=False) as env:

                agent.setup(env.observation_spec(), env.action_spec())
                timesteps = env.reset()
                agent.reset()

                while True:
                    step_actions = [agent.step(timesteps[0])]
                    if timesteps[0].last():
                        break
                    timesteps = env.step(step_actions)

    except KeyboardInterrupt:
        pass


if __name__ == "__main__":
    app.run(main)
